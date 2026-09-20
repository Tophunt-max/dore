import fs from 'node:fs';
import path from 'node:path';
import process from 'node:process';
import ts from 'typescript';

const root = process.cwd();
const sourcePath = path.join(root, 'src', 'i18n.ts');
const sourceText = fs.readFileSync(sourcePath, 'utf8');
const source = ts.createSourceFile(
  sourcePath,
  sourceText,
  ts.ScriptTarget.Latest,
  true,
  ts.ScriptKind.TS,
);
const errors = [];
const locales = ['en', 'hi', 'zh'];

function unwrap(node) {
  if (
    ts.isAsExpression(node) ||
    ts.isSatisfiesExpression(node) ||
    ts.isParenthesizedExpression(node)
  ) {
    return unwrap(node.expression);
  }
  return node;
}

function placeholders(value) {
  return [...value.matchAll(/\{([A-Za-z][A-Za-z0-9]*)\}/g)]
    .map((match) => match[1])
    .sort()
    .join(',');
}

let catalogNode;
for (const statement of source.statements) {
  if (!ts.isVariableStatement(statement)) continue;
  for (const declaration of statement.declarationList.declarations) {
    if (
      ts.isIdentifier(declaration.name) &&
      declaration.name.text === 'catalog' &&
      declaration.initializer
    ) {
      catalogNode = unwrap(declaration.initializer);
    }
  }
}

if (!catalogNode || !ts.isObjectLiteralExpression(catalogNode)) {
  errors.push('Could not find the catalog object in src/i18n.ts.');
} else {
  const seenKeys = new Set();
  for (const property of catalogNode.properties) {
    if (!ts.isPropertyAssignment(property)) continue;
    const key = ts.isStringLiteral(property.name)
      ? property.name.text
      : property.name.getText(source);
    if (seenKeys.has(key)) errors.push(`Duplicate catalog key: ${key}`);
    seenKeys.add(key);

    const row = unwrap(property.initializer);
    if (!ts.isObjectLiteralExpression(row)) {
      errors.push(`${key}: translation row must be an object literal.`);
      continue;
    }
    const values = new Map();
    for (const item of row.properties) {
      if (!ts.isPropertyAssignment(item)) continue;
      const locale = item.name.getText(source).replaceAll(/["']/g, '');
      const value = unwrap(item.initializer);
      if (
        ts.isStringLiteral(value) ||
        ts.isNoSubstitutionTemplateLiteral(value)
      ) {
        values.set(locale, value.text);
      }
    }
    for (const locale of locales) {
      if (!values.has(locale))
        errors.push(`${key}: missing ${locale} translation.`);
      else if (!values.get(locale).trim())
        errors.push(`${key}: empty ${locale} translation.`);
    }
    for (const locale of values.keys()) {
      if (!locales.includes(locale))
        errors.push(`${key}: unsupported locale ${locale}.`);
    }
    const expected = placeholders(values.get('en') ?? '');
    for (const locale of locales.slice(1)) {
      const actual = placeholders(values.get(locale) ?? '');
      if (actual !== expected) {
        errors.push(
          `${key}: ${locale} placeholders (${actual}) do not match English (${expected}).`,
        );
      }
    }
  }
  if (seenKeys.size === 0) errors.push('Catalog contains no translation keys.');
}

if (errors.length) {
  console.error(`i18n catalog check failed with ${errors.length} issue(s):`);
  for (const error of errors) console.error(`- ${error}`);
  process.exit(1);
}

console.log(
  `i18n catalog complete: ${catalogNode.properties.length} keys × ${locales.length} locales.`,
);
