package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.parser.deserializer.ArrayDeserializer;
import com.alibaba.fastjson.parser.deserializer.ArrayListTypeFieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.BooleanFieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.CharArrayDeserializer;
import com.alibaba.fastjson.parser.deserializer.ClassDerializer;
import com.alibaba.fastjson.parser.deserializer.CollectionDeserializer;
import com.alibaba.fastjson.parser.deserializer.DateDeserializer;
import com.alibaba.fastjson.parser.deserializer.DateFormatDeserializer;
import com.alibaba.fastjson.parser.deserializer.DefaultFieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.EnumDeserializer;
import com.alibaba.fastjson.parser.deserializer.FieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.IntegerFieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.JSONArrayDeserializer;
import com.alibaba.fastjson.parser.deserializer.JSONObjectDeserializer;
import com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer;
import com.alibaba.fastjson.parser.deserializer.JavaObjectDeserializer;
import com.alibaba.fastjson.parser.deserializer.LongFieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.MapDeserializer;
import com.alibaba.fastjson.parser.deserializer.NumberDeserializer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.parser.deserializer.SqlDateDeserializer;
import com.alibaba.fastjson.parser.deserializer.StackTraceElementDeserializer;
import com.alibaba.fastjson.parser.deserializer.StringFieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.ThrowableDeserializer;
import com.alibaba.fastjson.parser.deserializer.TimeDeserializer;
import com.alibaba.fastjson.parser.deserializer.TimestampDeserializer;
import com.alibaba.fastjson.serializer.BigDecimalCodec;
import com.alibaba.fastjson.serializer.BigIntegerCodec;
import com.alibaba.fastjson.serializer.BooleanCodec;
import com.alibaba.fastjson.serializer.CalendarCodec;
import com.alibaba.fastjson.serializer.CharacterCodec;
import com.alibaba.fastjson.serializer.CharsetCodec;
import com.alibaba.fastjson.serializer.CurrencyCodec;
import com.alibaba.fastjson.serializer.FloatCodec;
import com.alibaba.fastjson.serializer.InetAddressCodec;
import com.alibaba.fastjson.serializer.InetSocketAddressCodec;
import com.alibaba.fastjson.serializer.IntegerCodec;
import com.alibaba.fastjson.serializer.LocaleCodec;
import com.alibaba.fastjson.serializer.LongCodec;
import com.alibaba.fastjson.serializer.PatternCodec;
import com.alibaba.fastjson.serializer.StringCodec;
import com.alibaba.fastjson.serializer.TimeZoneCodec;
import com.alibaba.fastjson.serializer.URICodec;
import com.alibaba.fastjson.serializer.URLCodec;
import com.alibaba.fastjson.serializer.UUIDCodec;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.IdentityHashMap;
import java.io.Closeable;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Currency;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class ParserConfig {
    private static ParserConfig global = new ParserConfig();
    private final IdentityHashMap<Type, ObjectDeserializer> derializers;
    private final Set<Class<?>> primitiveClasses;
    protected final SymbolTable symbolTable;

    public static ParserConfig getGlobalInstance() {
        return global;
    }

    public ParserConfig() {
        HashSet hashSet = new HashSet();
        this.primitiveClasses = hashSet;
        IdentityHashMap<Type, ObjectDeserializer> identityHashMap = new IdentityHashMap<>();
        this.derializers = identityHashMap;
        this.symbolTable = new SymbolTable();
        hashSet.add(Boolean.TYPE);
        hashSet.add(Boolean.class);
        hashSet.add(Character.TYPE);
        hashSet.add(Character.class);
        hashSet.add(Byte.TYPE);
        hashSet.add(Byte.class);
        hashSet.add(Short.TYPE);
        hashSet.add(Short.class);
        hashSet.add(Integer.TYPE);
        hashSet.add(Integer.class);
        hashSet.add(Long.TYPE);
        hashSet.add(Long.class);
        hashSet.add(Float.TYPE);
        hashSet.add(Float.class);
        hashSet.add(Double.TYPE);
        hashSet.add(Double.class);
        hashSet.add(BigInteger.class);
        hashSet.add(BigDecimal.class);
        hashSet.add(String.class);
        hashSet.add(Date.class);
        hashSet.add(java.sql.Date.class);
        hashSet.add(Time.class);
        hashSet.add(Timestamp.class);
        identityHashMap.put(SimpleDateFormat.class, DateFormatDeserializer.instance);
        identityHashMap.put(Timestamp.class, TimestampDeserializer.instance);
        identityHashMap.put(java.sql.Date.class, SqlDateDeserializer.instance);
        identityHashMap.put(Time.class, TimeDeserializer.instance);
        identityHashMap.put(Date.class, DateDeserializer.instance);
        identityHashMap.put(Calendar.class, CalendarCodec.instance);
        identityHashMap.put(JSONObject.class, JSONObjectDeserializer.instance);
        identityHashMap.put(JSONArray.class, JSONArrayDeserializer.instance);
        identityHashMap.put(Map.class, MapDeserializer.instance);
        identityHashMap.put(HashMap.class, MapDeserializer.instance);
        identityHashMap.put(LinkedHashMap.class, MapDeserializer.instance);
        identityHashMap.put(TreeMap.class, MapDeserializer.instance);
        identityHashMap.put(ConcurrentMap.class, MapDeserializer.instance);
        identityHashMap.put(ConcurrentHashMap.class, MapDeserializer.instance);
        identityHashMap.put(Collection.class, CollectionDeserializer.instance);
        identityHashMap.put(List.class, CollectionDeserializer.instance);
        identityHashMap.put(ArrayList.class, CollectionDeserializer.instance);
        identityHashMap.put(Object.class, JavaObjectDeserializer.instance);
        identityHashMap.put(String.class, StringCodec.instance);
        identityHashMap.put(Character.TYPE, CharacterCodec.instance);
        identityHashMap.put(Character.class, CharacterCodec.instance);
        identityHashMap.put(Byte.TYPE, NumberDeserializer.instance);
        identityHashMap.put(Byte.class, NumberDeserializer.instance);
        identityHashMap.put(Short.TYPE, NumberDeserializer.instance);
        identityHashMap.put(Short.class, NumberDeserializer.instance);
        identityHashMap.put(Integer.TYPE, IntegerCodec.instance);
        identityHashMap.put(Integer.class, IntegerCodec.instance);
        identityHashMap.put(Long.TYPE, LongCodec.instance);
        identityHashMap.put(Long.class, LongCodec.instance);
        identityHashMap.put(BigInteger.class, BigIntegerCodec.instance);
        identityHashMap.put(BigDecimal.class, BigDecimalCodec.instance);
        identityHashMap.put(Float.TYPE, FloatCodec.instance);
        identityHashMap.put(Float.class, FloatCodec.instance);
        identityHashMap.put(Double.TYPE, NumberDeserializer.instance);
        identityHashMap.put(Double.class, NumberDeserializer.instance);
        identityHashMap.put(Boolean.TYPE, BooleanCodec.instance);
        identityHashMap.put(Boolean.class, BooleanCodec.instance);
        identityHashMap.put(Class.class, ClassDerializer.instance);
        identityHashMap.put(char[].class, CharArrayDeserializer.instance);
        identityHashMap.put(UUID.class, UUIDCodec.instance);
        identityHashMap.put(TimeZone.class, TimeZoneCodec.instance);
        identityHashMap.put(Locale.class, LocaleCodec.instance);
        identityHashMap.put(Currency.class, CurrencyCodec.instance);
        identityHashMap.put(InetAddress.class, InetAddressCodec.instance);
        identityHashMap.put(Inet4Address.class, InetAddressCodec.instance);
        identityHashMap.put(Inet6Address.class, InetAddressCodec.instance);
        identityHashMap.put(InetSocketAddress.class, InetSocketAddressCodec.instance);
        identityHashMap.put(URI.class, URICodec.instance);
        identityHashMap.put(URL.class, URLCodec.instance);
        identityHashMap.put(Pattern.class, PatternCodec.instance);
        identityHashMap.put(Charset.class, CharsetCodec.instance);
        identityHashMap.put(Number.class, NumberDeserializer.instance);
        identityHashMap.put(StackTraceElement.class, StackTraceElementDeserializer.instance);
        identityHashMap.put(Serializable.class, JavaObjectDeserializer.instance);
        identityHashMap.put(Cloneable.class, JavaObjectDeserializer.instance);
        identityHashMap.put(Comparable.class, JavaObjectDeserializer.instance);
        identityHashMap.put(Closeable.class, JavaObjectDeserializer.instance);
    }

    public SymbolTable getSymbolTable() {
        return this.symbolTable;
    }

    public IdentityHashMap<Type, ObjectDeserializer> getDerializers() {
        return this.derializers;
    }

    public ObjectDeserializer getDeserializer(Type type) {
        ObjectDeserializer objectDeserializer = this.derializers.get(type);
        if (objectDeserializer != null) {
            return objectDeserializer;
        }
        if (type instanceof Class) {
            return getDeserializer((Class) type, type);
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            if (rawType instanceof Class) {
                return getDeserializer((Class) rawType, type);
            }
            return getDeserializer(rawType);
        }
        return JavaObjectDeserializer.instance;
    }

    public ObjectDeserializer getDeserializer(Class<?> cls, Type type) {
        ObjectDeserializer objectDeserializerCreateJavaBeanDeserializer;
        Class<?> clsMappingTo;
        ObjectDeserializer objectDeserializer = this.derializers.get(type);
        if (objectDeserializer != null) {
            return objectDeserializer;
        }
        if (type == null) {
            type = cls;
        }
        ObjectDeserializer objectDeserializer2 = this.derializers.get(type);
        if (objectDeserializer2 != null) {
            return objectDeserializer2;
        }
        JSONType jSONType = (JSONType) cls.getAnnotation(JSONType.class);
        if (jSONType != null && (clsMappingTo = jSONType.mappingTo()) != Void.class) {
            return getDeserializer(clsMappingTo, clsMappingTo);
        }
        if ((type instanceof WildcardType) || (type instanceof TypeVariable) || (type instanceof ParameterizedType)) {
            objectDeserializer2 = this.derializers.get(cls);
        }
        if (objectDeserializer2 != null) {
            return objectDeserializer2;
        }
        ObjectDeserializer objectDeserializer3 = this.derializers.get(type);
        if (objectDeserializer3 != null) {
            return objectDeserializer3;
        }
        if (cls.isEnum()) {
            objectDeserializerCreateJavaBeanDeserializer = new EnumDeserializer(cls);
        } else if (cls.isArray()) {
            objectDeserializerCreateJavaBeanDeserializer = ArrayDeserializer.instance;
        } else if (cls == Set.class || cls == HashSet.class || cls == Collection.class || cls == List.class || cls == ArrayList.class || Collection.class.isAssignableFrom(cls)) {
            objectDeserializerCreateJavaBeanDeserializer = CollectionDeserializer.instance;
        } else if (Map.class.isAssignableFrom(cls)) {
            objectDeserializerCreateJavaBeanDeserializer = MapDeserializer.instance;
        } else if (Throwable.class.isAssignableFrom(cls)) {
            objectDeserializerCreateJavaBeanDeserializer = new ThrowableDeserializer(this, cls);
        } else {
            objectDeserializerCreateJavaBeanDeserializer = createJavaBeanDeserializer(cls, type);
        }
        putDeserializer(type, objectDeserializerCreateJavaBeanDeserializer);
        return objectDeserializerCreateJavaBeanDeserializer;
    }

    public ObjectDeserializer createJavaBeanDeserializer(Class<?> cls, Type type) {
        return new JavaBeanDeserializer(this, cls, type);
    }

    public FieldDeserializer createFieldDeserializer(ParserConfig parserConfig, Class<?> cls, FieldInfo fieldInfo) {
        Class<?> fieldClass = fieldInfo.getFieldClass();
        if (fieldClass == Boolean.TYPE || fieldClass == Boolean.class) {
            return new BooleanFieldDeserializer(parserConfig, cls, fieldInfo);
        }
        if (fieldClass == Integer.TYPE || fieldClass == Integer.class) {
            return new IntegerFieldDeserializer(parserConfig, cls, fieldInfo);
        }
        if (fieldClass == Long.TYPE || fieldClass == Long.class) {
            return new LongFieldDeserializer(parserConfig, cls, fieldInfo);
        }
        if (fieldClass == String.class) {
            return new StringFieldDeserializer(parserConfig, cls, fieldInfo);
        }
        if (fieldClass == List.class || fieldClass == ArrayList.class) {
            return new ArrayListTypeFieldDeserializer(parserConfig, cls, fieldInfo);
        }
        return new DefaultFieldDeserializer(parserConfig, cls, fieldInfo);
    }

    public void putDeserializer(Type type, ObjectDeserializer objectDeserializer) {
        this.derializers.put(type, objectDeserializer);
    }

    public ObjectDeserializer getDeserializer(FieldInfo fieldInfo) {
        return getDeserializer(fieldInfo.getFieldClass(), fieldInfo.getFieldType());
    }

    public boolean isPrimitive(Class<?> cls) {
        return this.primitiveClasses.contains(cls);
    }

    public static Field getField(Class<?> cls, String str) {
        Field field0 = getField0(cls, str);
        if (field0 == null) {
            field0 = getField0(cls, "_" + str);
        }
        if (field0 != null) {
            return field0;
        }
        return getField0(cls, "m_" + str);
    }

    private static Field getField0(Class<?> cls, String str) {
        for (Field field : cls.getDeclaredFields()) {
            if (str.equals(field.getName())) {
                return field;
            }
        }
        if (cls.getSuperclass() == null || cls.getSuperclass() == Object.class) {
            return null;
        }
        return getField(cls.getSuperclass(), str);
    }

    public Map<String, FieldDeserializer> getFieldDeserializers(Class<?> cls) {
        ObjectDeserializer deserializer = getDeserializer(cls);
        if (deserializer instanceof JavaBeanDeserializer) {
            return ((JavaBeanDeserializer) deserializer).getFieldDeserializerMap();
        }
        return Collections.emptyMap();
    }
}
