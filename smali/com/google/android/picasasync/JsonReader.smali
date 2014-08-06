.class public final Lcom/google/android/picasasync/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/JsonReader$1;
    }
.end annotation


# instance fields
.field private final buffer:[C

.field private bufferStartColumn:I

.field private bufferStartLine:I

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private name:Ljava/lang/String;

.field private pos:I

.field private skipping:Z

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/picasasync/JsonScope;",
            ">;"
        }
    .end annotation
.end field

.field private token:Lcom/google/android/picasasync/JsonToken;

.field private value:Ljava/lang/String;

.field private valueLength:I

.field private valuePos:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3
    .param p1, "in"    # Ljava/io/Reader;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 234
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-boolean v1, p0, Lcom/google/android/picasasync/JsonReader;->lenient:Z

    .line 196
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    .line 197
    iput v1, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    .line 198
    iput v1, p0, Lcom/google/android/picasasync/JsonReader;->limit:I

    .line 203
    iput v2, p0, Lcom/google/android/picasasync/JsonReader;->bufferStartLine:I

    .line 204
    iput v2, p0, Lcom/google/android/picasasync/JsonReader;->bufferStartColumn:I

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/picasasync/JsonReader;->stack:Ljava/util/List;

    .line 208
    sget-object v0, Lcom/google/android/picasasync/JsonScope;->EMPTY_DOCUMENT:Lcom/google/android/picasasync/JsonScope;

    invoke-direct {p0, v0}, Lcom/google/android/picasasync/JsonReader;->push(Lcom/google/android/picasasync/JsonScope;)V

    .line 229
    iput-boolean v1, p0, Lcom/google/android/picasasync/JsonReader;->skipping:Z

    .line 235
    if-nez p1, :cond_0

    .line 236
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    iput-object p1, p0, Lcom/google/android/picasasync/JsonReader;->in:Ljava/io/Reader;

    .line 239
    return-void
.end method

.method private advance()Lcom/google/android/picasasync/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 372
    invoke-virtual {p0}, Lcom/google/android/picasasync/JsonReader;->peek()Lcom/google/android/picasasync/JsonToken;

    .line 374
    iget-object v0, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    .line 375
    .local v0, "result":Lcom/google/android/picasasync/JsonToken;
    iput-object v1, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    .line 376
    iput-object v1, p0, Lcom/google/android/picasasync/JsonReader;->value:Ljava/lang/String;

    .line 377
    iput-object v1, p0, Lcom/google/android/picasasync/JsonReader;->name:Ljava/lang/String;

    .line 378
    return-object v0
.end method

.method private checkLenient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 839
    iget-boolean v0, p0, Lcom/google/android/picasasync/JsonReader;->lenient:Z

    if-nez v0, :cond_0

    .line 840
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/google/android/picasasync/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 842
    :cond_0
    return-void
.end method

.method private decodeLiteral()Lcom/google/android/picasasync/JsonToken;
    .locals 8

    .prologue
    const/16 v7, 0x55

    const/16 v6, 0x45

    const/4 v5, 0x4

    const/16 v4, 0x6c

    const/16 v3, 0x4c

    .line 1075
    iget v0, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1077
    sget-object v0, Lcom/google/android/picasasync/JsonToken;->STRING:Lcom/google/android/picasasync/JsonToken;

    .line 1103
    :goto_0
    return-object v0

    .line 1078
    :cond_0
    iget v0, p0, Lcom/google/android/picasasync/JsonReader;->valueLength:I

    if-ne v0, v5, :cond_5

    const/16 v0, 0x6e

    iget-object v1, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_1

    const/16 v0, 0x4e

    iget-object v1, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_5

    :cond_1
    const/16 v0, 0x75

    iget-object v1, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    if-ne v7, v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-eq v4, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-eq v4, v0, :cond_4

    iget-object v0, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_5

    .line 1083
    :cond_4
    const-string v0, "null"

    iput-object v0, p0, Lcom/google/android/picasasync/JsonReader;->value:Ljava/lang/String;

    .line 1084
    sget-object v0, Lcom/google/android/picasasync/JsonToken;->NULL:Lcom/google/android/picasasync/JsonToken;

    goto :goto_0

    .line 1085
    :cond_5
    iget v0, p0, Lcom/google/android/picasasync/JsonReader;->valueLength:I

    if-ne v0, v5, :cond_a

    const/16 v0, 0x74

    iget-object v1, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_6

    const/16 v0, 0x54

    iget-object v1, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_a

    :cond_6
    const/16 v0, 0x72

    iget-object v1, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_7

    const/16 v0, 0x52

    iget-object v1, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_a

    :cond_7
    const/16 v0, 0x75

    iget-object v1, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v7, v0, :cond_a

    :cond_8
    const/16 v0, 0x65

    iget-object v1, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-ne v6, v0, :cond_a

    .line 1090
    :cond_9
    const-string v0, "true"

    iput-object v0, p0, Lcom/google/android/picasasync/JsonReader;->value:Ljava/lang/String;

    .line 1091
    sget-object v0, Lcom/google/android/picasasync/JsonToken;->BOOLEAN:Lcom/google/android/picasasync/JsonToken;

    goto/16 :goto_0

    .line 1092
    :cond_a
    iget v0, p0, Lcom/google/android/picasasync/JsonReader;->valueLength:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    const/16 v0, 0x66

    iget-object v1, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_b

    const/16 v0, 0x46

    iget-object v1, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_10

    :cond_b
    const/16 v0, 0x61

    iget-object v1, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_c

    const/16 v0, 0x41

    iget-object v1, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_10

    :cond_c
    iget-object v0, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-eq v4, v0, :cond_d

    iget-object v0, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_10

    :cond_d
    const/16 v0, 0x73

    iget-object v1, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_e

    const/16 v0, 0x53

    iget-object v1, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_10

    :cond_e
    const/16 v0, 0x65

    iget-object v1, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x4

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    if-ne v6, v0, :cond_10

    .line 1098
    :cond_f
    const-string v0, "false"

    iput-object v0, p0, Lcom/google/android/picasasync/JsonReader;->value:Ljava/lang/String;

    .line 1099
    sget-object v0, Lcom/google/android/picasasync/JsonToken;->BOOLEAN:Lcom/google/android/picasasync/JsonToken;

    goto/16 :goto_0

    .line 1102
    :cond_10
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    iget v3, p0, Lcom/google/android/picasasync/JsonReader;->valueLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/android/picasasync/JsonReader;->value:Ljava/lang/String;

    .line 1103
    iget-object v0, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->valueLength:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/picasasync/JsonReader;->decodeNumber([CII)Lcom/google/android/picasasync/JsonToken;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private decodeNumber([CII)Lcom/google/android/picasasync/JsonToken;
    .locals 6
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/16 v5, 0x2d

    const/16 v4, 0x39

    const/16 v3, 0x30

    .line 1114
    move v1, p2

    .line 1115
    .local v1, "i":I
    aget-char v0, p1, v1

    .line 1117
    .local v0, "c":I
    if-ne v0, v5, :cond_0

    .line 1118
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1121
    :cond_0
    if-ne v0, v3, :cond_2

    .line 1122
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1132
    :cond_1
    const/16 v2, 0x2e

    if-ne v0, v2, :cond_4

    .line 1133
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1134
    :goto_0
    if-lt v0, v3, :cond_4

    if-gt v0, v4, :cond_4

    .line 1135
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    goto :goto_0

    .line 1123
    :cond_2
    const/16 v2, 0x31

    if-lt v0, v2, :cond_3

    if-gt v0, v4, :cond_3

    .line 1124
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1125
    :goto_1
    if-lt v0, v3, :cond_1

    if-gt v0, v4, :cond_1

    .line 1126
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    goto :goto_1

    .line 1129
    :cond_3
    sget-object v2, Lcom/google/android/picasasync/JsonToken;->STRING:Lcom/google/android/picasasync/JsonToken;

    .line 1157
    :goto_2
    return-object v2

    .line 1139
    :cond_4
    const/16 v2, 0x65

    if-eq v0, v2, :cond_5

    const/16 v2, 0x45

    if-ne v0, v2, :cond_9

    .line 1140
    :cond_5
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1141
    const/16 v2, 0x2b

    if-eq v0, v2, :cond_6

    if-ne v0, v5, :cond_7

    .line 1142
    :cond_6
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1144
    :cond_7
    if-lt v0, v3, :cond_8

    if-gt v0, v4, :cond_8

    .line 1145
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1146
    :goto_3
    if-lt v0, v3, :cond_9

    if-gt v0, v4, :cond_9

    .line 1147
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    goto :goto_3

    .line 1150
    :cond_8
    sget-object v2, Lcom/google/android/picasasync/JsonToken;->STRING:Lcom/google/android/picasasync/JsonToken;

    goto :goto_2

    .line 1154
    :cond_9
    add-int v2, p2, p3

    if-ne v1, v2, :cond_a

    .line 1155
    sget-object v2, Lcom/google/android/picasasync/JsonToken;->NUMBER:Lcom/google/android/picasasync/JsonToken;

    goto :goto_2

    .line 1157
    :cond_a
    sget-object v2, Lcom/google/android/picasasync/JsonToken;->STRING:Lcom/google/android/picasasync/JsonToken;

    goto :goto_2
.end method

.method private expect(Lcom/google/android/picasasync/JsonToken;)V
    .locals 3
    .param p1, "expected"    # Lcom/google/android/picasasync/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/android/picasasync/JsonReader;->peek()Lcom/google/android/picasasync/JsonToken;

    .line 310
    iget-object v0, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    if-eq v0, p1, :cond_0

    .line 311
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/picasasync/JsonReader;->peek()Lcom/google/android/picasasync/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_0
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->advance()Lcom/google/android/picasasync/JsonToken;

    .line 314
    return-void
.end method

.method private fillBuffer(I)Z
    .locals 9
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 726
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    if-ge v0, v4, :cond_1

    .line 727
    iget-object v4, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    aget-char v4, v4, v0

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    .line 728
    iget v4, p0, Lcom/google/android/picasasync/JsonReader;->bufferStartLine:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/android/picasasync/JsonReader;->bufferStartLine:I

    .line 729
    iput v2, p0, Lcom/google/android/picasasync/JsonReader;->bufferStartColumn:I

    .line 726
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 731
    :cond_0
    iget v4, p0, Lcom/google/android/picasasync/JsonReader;->bufferStartColumn:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/android/picasasync/JsonReader;->bufferStartColumn:I

    goto :goto_1

    .line 735
    :cond_1
    iget v4, p0, Lcom/google/android/picasasync/JsonReader;->limit:I

    iget v5, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    if-eq v4, v5, :cond_4

    .line 736
    iget v4, p0, Lcom/google/android/picasasync/JsonReader;->limit:I

    iget v5, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/picasasync/JsonReader;->limit:I

    .line 737
    iget-object v4, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v5, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    iget-object v6, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/android/picasasync/JsonReader;->limit:I

    invoke-static {v4, v5, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 742
    :goto_2
    iput v3, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    .line 744
    :cond_2
    iget-object v4, p0, Lcom/google/android/picasasync/JsonReader;->in:Ljava/io/Reader;

    iget-object v5, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v6, p0, Lcom/google/android/picasasync/JsonReader;->limit:I

    iget-object v7, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    array-length v7, v7

    iget v8, p0, Lcom/google/android/picasasync/JsonReader;->limit:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .local v1, "total":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    .line 745
    iget v4, p0, Lcom/google/android/picasasync/JsonReader;->limit:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/google/android/picasasync/JsonReader;->limit:I

    .line 748
    iget v4, p0, Lcom/google/android/picasasync/JsonReader;->bufferStartLine:I

    if-ne v4, v2, :cond_3

    iget v4, p0, Lcom/google/android/picasasync/JsonReader;->bufferStartColumn:I

    if-ne v4, v2, :cond_3

    iget v4, p0, Lcom/google/android/picasasync/JsonReader;->limit:I

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    aget-char v4, v4, v3

    const v5, 0xfeff

    if-ne v4, v5, :cond_3

    .line 750
    iget v4, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    .line 751
    iget v4, p0, Lcom/google/android/picasasync/JsonReader;->bufferStartColumn:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/google/android/picasasync/JsonReader;->bufferStartColumn:I

    .line 754
    :cond_3
    iget v4, p0, Lcom/google/android/picasasync/JsonReader;->limit:I

    if-lt v4, p1, :cond_2

    .line 758
    :goto_3
    return v2

    .line 739
    .end local v1    # "total":I
    :cond_4
    iput v3, p0, Lcom/google/android/picasasync/JsonReader;->limit:I

    goto :goto_2

    .restart local v1    # "total":I
    :cond_5
    move v2, v3

    .line 758
    goto :goto_3
.end method

.method private getColumnNumber()I
    .locals 4

    .prologue
    .line 772
    iget v1, p0, Lcom/google/android/picasasync/JsonReader;->bufferStartColumn:I

    .line 773
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    if-ge v0, v2, :cond_1

    .line 774
    iget-object v2, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 775
    const/4 v1, 0x1

    .line 773
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 777
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 780
    :cond_1
    return v1
.end method

.method private getLineNumber()I
    .locals 4

    .prologue
    .line 762
    iget v1, p0, Lcom/google/android/picasasync/JsonReader;->bufferStartLine:I

    .line 763
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    if-ge v0, v2, :cond_1

    .line 764
    iget-object v2, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 765
    add-int/lit8 v1, v1, 0x1

    .line 763
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 768
    :cond_1
    return v1
.end method

.method private getSnippet()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/16 v5, 0x14

    .line 1171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1172
    .local v2, "snippet":Ljava/lang/StringBuilder;
    iget v3, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1173
    .local v1, "beforePos":I
    iget-object v3, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1174
    iget v3, p0, Lcom/google/android/picasasync/JsonReader;->limit:I

    iget v4, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    sub-int/2addr v3, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1175
    .local v0, "afterPos":I
    iget-object v3, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    invoke-virtual {v2, v3, v4, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1176
    return-object v2
.end method

.method private nextInArray(Z)Lcom/google/android/picasasync/JsonToken;
    .locals 1
    .param p1, "firstElement"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 585
    if-eqz p1, :cond_0

    .line 586
    sget-object v0, Lcom/google/android/picasasync/JsonScope;->NONEMPTY_ARRAY:Lcom/google/android/picasasync/JsonScope;

    invoke-direct {p0, v0}, Lcom/google/android/picasasync/JsonReader;->replaceTop(Lcom/google/android/picasasync/JsonScope;)V

    .line 603
    :goto_0
    :sswitch_0
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->nextNonWhitespace()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 618
    iget v0, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    .line 619
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->nextValue()Lcom/google/android/picasasync/JsonToken;

    move-result-object v0

    :goto_1
    return-object v0

    .line 589
    :cond_0
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->nextNonWhitespace()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 599
    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcom/google/android/picasasync/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 591
    :sswitch_1
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->pop()Lcom/google/android/picasasync/JsonScope;

    .line 592
    sget-object v0, Lcom/google/android/picasasync/JsonToken;->END_ARRAY:Lcom/google/android/picasasync/JsonToken;

    iput-object v0, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    goto :goto_1

    .line 594
    :sswitch_2
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->checkLenient()V

    goto :goto_0

    .line 605
    :sswitch_3
    if-eqz p1, :cond_1

    .line 606
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->pop()Lcom/google/android/picasasync/JsonScope;

    .line 607
    sget-object v0, Lcom/google/android/picasasync/JsonToken;->END_ARRAY:Lcom/google/android/picasasync/JsonToken;

    iput-object v0, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    goto :goto_1

    .line 613
    :cond_1
    :sswitch_4
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->checkLenient()V

    .line 614
    iget v0, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    .line 615
    const-string v0, "null"

    iput-object v0, p0, Lcom/google/android/picasasync/JsonReader;->value:Ljava/lang/String;

    .line 616
    sget-object v0, Lcom/google/android/picasasync/JsonToken;->NULL:Lcom/google/android/picasasync/JsonToken;

    iput-object v0, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    goto :goto_1

    .line 603
    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_4
        0x3b -> :sswitch_4
        0x5d -> :sswitch_3
    .end sparse-switch

    .line 589
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_2
        0x5d -> :sswitch_1
    .end sparse-switch
.end method

.method private nextInObject(Z)Lcom/google/android/picasasync/JsonToken;
    .locals 2
    .param p1, "firstElement"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 629
    if-eqz p1, :cond_0

    .line 631
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->nextNonWhitespace()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 636
    iget v1, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    .line 652
    :sswitch_0
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->nextNonWhitespace()I

    move-result v0

    .line 653
    .local v0, "quote":I
    sparse-switch v0, :sswitch_data_0

    .line 661
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->checkLenient()V

    .line 662
    iget v1, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    .line 663
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/picasasync/JsonReader;->nextLiteral(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/JsonReader;->name:Ljava/lang/String;

    .line 664
    iget-object v1, p0, Lcom/google/android/picasasync/JsonReader;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 665
    const-string v1, "Expected name"

    invoke-direct {p0, v1}, Lcom/google/android/picasasync/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 633
    .end local v0    # "quote":I
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->pop()Lcom/google/android/picasasync/JsonScope;

    .line 634
    sget-object v1, Lcom/google/android/picasasync/JsonToken;->END_OBJECT:Lcom/google/android/picasasync/JsonToken;

    iput-object v1, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    .line 670
    :goto_0
    return-object v1

    .line 639
    :cond_0
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->nextNonWhitespace()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    .line 647
    const-string v1, "Unterminated object"

    invoke-direct {p0, v1}, Lcom/google/android/picasasync/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 641
    :sswitch_1
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->pop()Lcom/google/android/picasasync/JsonScope;

    .line 642
    sget-object v1, Lcom/google/android/picasasync/JsonToken;->END_OBJECT:Lcom/google/android/picasasync/JsonToken;

    iput-object v1, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    goto :goto_0

    .line 655
    .restart local v0    # "quote":I
    :sswitch_2
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->checkLenient()V

    .line 658
    :sswitch_3
    int-to-char v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/picasasync/JsonReader;->nextString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/JsonReader;->name:Ljava/lang/String;

    .line 669
    :cond_1
    sget-object v1, Lcom/google/android/picasasync/JsonScope;->DANGLING_NAME:Lcom/google/android/picasasync/JsonScope;

    invoke-direct {p0, v1}, Lcom/google/android/picasasync/JsonReader;->replaceTop(Lcom/google/android/picasasync/JsonScope;)V

    .line 670
    sget-object v1, Lcom/google/android/picasasync/JsonToken;->NAME:Lcom/google/android/picasasync/JsonToken;

    iput-object v1, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    goto :goto_0

    .line 631
    nop

    :pswitch_data_0
    .packed-switch 0x7d
        :pswitch_0
    .end packed-switch

    .line 653
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
    .end sparse-switch

    .line 639
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private nextLiteral(Z)Ljava/lang/String;
    .locals 6
    .param p1, "assignOffsetsOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 928
    const/4 v0, 0x0

    .line 929
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v3, -0x1

    iput v3, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    .line 930
    iput v5, p0, Lcom/google/android/picasasync/JsonReader;->valueLength:I

    .line 931
    const/4 v1, 0x0

    .line 935
    .local v1, "i":I
    :cond_0
    :goto_0
    iget v3, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/google/android/picasasync/JsonReader;->limit:I

    if-ge v3, v4, :cond_1

    .line 936
    iget-object v3, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 935
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 942
    :sswitch_0
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->checkLenient()V

    .line 987
    :goto_1
    :sswitch_1
    if-eqz p1, :cond_4

    if-nez v0, :cond_4

    .line 988
    iget v3, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    iput v3, p0, Lcom/google/android/picasasync/JsonReader;->valuePos:I

    .line 989
    const/4 v2, 0x0

    .line 999
    .local v2, "result":Ljava/lang/String;
    :goto_2
    iget v3, p0, Lcom/google/android/picasasync/JsonReader;->valueLength:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/android/picasasync/JsonReader;->valueLength:I

    .line 1000
    iget v3, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    .line 1001
    return-object v2

    .line 964
    .end local v2    # "result":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 965
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lcom/google/android/picasasync/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 968
    iget-object v3, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/android/picasasync/JsonReader;->limit:I

    aput-char v5, v3, v4

    goto :goto_1

    .line 974
    :cond_2
    if-nez v0, :cond_3

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 977
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_3
    iget-object v3, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 978
    iget v3, p0, Lcom/google/android/picasasync/JsonReader;->valueLength:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/android/picasasync/JsonReader;->valueLength:I

    .line 979
    iget v3, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    .line 980
    const/4 v1, 0x0

    .line 981
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/google/android/picasasync/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 990
    :cond_4
    iget-boolean v3, p0, Lcom/google/android/picasasync/JsonReader;->skipping:Z

    if-eqz v3, :cond_5

    .line 991
    const-string v2, "skipped!"

    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_2

    .line 992
    .end local v2    # "result":Ljava/lang/String;
    :cond_5
    if-nez v0, :cond_6

    .line 994
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_2

    .line 996
    .end local v2    # "result":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 997
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_2

    .line 936
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private nextNonWhitespace()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 784
    :goto_0
    :sswitch_0
    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    iget v3, p0, Lcom/google/android/picasasync/JsonReader;->limit:I

    if-lt v2, v3, :cond_0

    invoke-direct {p0, v5}, Lcom/google/android/picasasync/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 785
    :cond_0
    iget-object v2, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    aget-char v0, v2, v3

    .line 786
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_0

    .line 831
    :cond_1
    :goto_1
    return v0

    .line 794
    :sswitch_1
    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    iget v3, p0, Lcom/google/android/picasasync/JsonReader;->limit:I

    if-ne v2, v3, :cond_2

    invoke-direct {p0, v5}, Lcom/google/android/picasasync/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 798
    :cond_2
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->checkLenient()V

    .line 799
    iget-object v2, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    aget-char v1, v2, v3

    .line 800
    .local v1, "peek":C
    sparse-switch v1, :sswitch_data_1

    goto :goto_1

    .line 803
    :sswitch_2
    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    .line 804
    const-string v2, "*/"

    invoke-direct {p0, v2}, Lcom/google/android/picasasync/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 805
    const-string v2, "Unterminated comment"

    invoke-direct {p0, v2}, Lcom/google/android/picasasync/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 807
    :cond_3
    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    goto :goto_0

    .line 812
    :sswitch_3
    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    .line 813
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->skipToEndOfLine()V

    goto :goto_0

    .line 826
    .end local v1    # "peek":C
    :sswitch_4
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->checkLenient()V

    .line 827
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->skipToEndOfLine()V

    goto :goto_0

    .line 835
    .end local v0    # "c":I
    :cond_4
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "End of input"

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 786
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x23 -> :sswitch_4
        0x2f -> :sswitch_1
    .end sparse-switch

    .line 800
    :sswitch_data_1
    .sparse-switch
        0x2a -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch
.end method

.method private nextString(C)Ljava/lang/String;
    .locals 6
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 882
    const/4 v0, 0x0

    .line 885
    .local v0, "builder":Ljava/lang/StringBuilder;
    :cond_0
    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    .line 886
    .local v2, "start":I
    :cond_1
    :goto_0
    iget v3, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    iget v4, p0, Lcom/google/android/picasasync/JsonReader;->limit:I

    if-ge v3, v4, :cond_6

    .line 887
    iget-object v3, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    aget-char v1, v3, v4

    .line 889
    .local v1, "c":I
    if-ne v1, p1, :cond_4

    .line 890
    iget-boolean v3, p0, Lcom/google/android/picasasync/JsonReader;->skipping:Z

    if-eqz v3, :cond_2

    .line 891
    const-string v3, "skipped!"

    .line 897
    :goto_1
    return-object v3

    .line 892
    :cond_2
    if-nez v0, :cond_3

    .line 894
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v5, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v3, v4, v2, v5}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    .line 896
    :cond_3
    iget-object v3, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 897
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 900
    :cond_4
    const/16 v3, 0x5c

    if-ne v1, v3, :cond_1

    .line 901
    if-nez v0, :cond_5

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 904
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_5
    iget-object v3, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 905
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->readEscapeCharacter()C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 906
    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    goto :goto_0

    .line 910
    .end local v1    # "c":I
    :cond_6
    if-nez v0, :cond_7

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 913
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_7
    iget-object v3, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    sub-int/2addr v4, v2

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 914
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/google/android/picasasync/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 916
    const-string v3, "Unterminated string"

    invoke-direct {p0, v3}, Lcom/google/android/picasasync/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3
.end method

.method private nextValue()Lcom/google/android/picasasync/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 696
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->nextNonWhitespace()I

    move-result v0

    .line 697
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_0

    .line 714
    iget v1, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    .line 715
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->readLiteral()Lcom/google/android/picasasync/JsonToken;

    move-result-object v1

    :goto_0
    return-object v1

    .line 699
    :sswitch_0
    sget-object v1, Lcom/google/android/picasasync/JsonScope;->EMPTY_OBJECT:Lcom/google/android/picasasync/JsonScope;

    invoke-direct {p0, v1}, Lcom/google/android/picasasync/JsonReader;->push(Lcom/google/android/picasasync/JsonScope;)V

    .line 700
    sget-object v1, Lcom/google/android/picasasync/JsonToken;->BEGIN_OBJECT:Lcom/google/android/picasasync/JsonToken;

    iput-object v1, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    goto :goto_0

    .line 703
    :sswitch_1
    sget-object v1, Lcom/google/android/picasasync/JsonScope;->EMPTY_ARRAY:Lcom/google/android/picasasync/JsonScope;

    invoke-direct {p0, v1}, Lcom/google/android/picasasync/JsonReader;->push(Lcom/google/android/picasasync/JsonScope;)V

    .line 704
    sget-object v1, Lcom/google/android/picasasync/JsonToken;->BEGIN_ARRAY:Lcom/google/android/picasasync/JsonToken;

    iput-object v1, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    goto :goto_0

    .line 707
    :sswitch_2
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->checkLenient()V

    .line 710
    :sswitch_3
    int-to-char v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/picasasync/JsonReader;->nextString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/JsonReader;->value:Ljava/lang/String;

    .line 711
    sget-object v1, Lcom/google/android/picasasync/JsonToken;->STRING:Lcom/google/android/picasasync/JsonToken;

    iput-object v1, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    goto :goto_0

    .line 697
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
        0x5b -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method private objectValue()Lcom/google/android/picasasync/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->nextNonWhitespace()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 688
    :pswitch_0
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcom/google/android/picasasync/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 682
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->checkLenient()V

    .line 683
    iget v0, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    iget v1, p0, Lcom/google/android/picasasync/JsonReader;->limit:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/picasasync/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_1

    .line 684
    iget v0, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    .line 691
    :cond_1
    :pswitch_2
    sget-object v0, Lcom/google/android/picasasync/JsonScope;->NONEMPTY_OBJECT:Lcom/google/android/picasasync/JsonScope;

    invoke-direct {p0, v0}, Lcom/google/android/picasasync/JsonReader;->replaceTop(Lcom/google/android/picasasync/JsonScope;)V

    .line 692
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->nextValue()Lcom/google/android/picasasync/JsonToken;

    move-result-object v0

    return-object v0

    .line 678
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private peekStack()Lcom/google/android/picasasync/JsonScope;
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/android/picasasync/JsonReader;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/picasasync/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/JsonScope;

    return-object v0
.end method

.method private pop()Lcom/google/android/picasasync/JsonScope;
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/google/android/picasasync/JsonReader;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/picasasync/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/JsonScope;

    return-object v0
.end method

.method private push(Lcom/google/android/picasasync/JsonScope;)V
    .locals 1
    .param p1, "newTop"    # Lcom/google/android/picasasync/JsonScope;

    .prologue
    .line 574
    iget-object v0, p0, Lcom/google/android/picasasync/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    return-void
.end method

.method private readEscapeCharacter()C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    .line 1018
    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    iget v3, p0, Lcom/google/android/picasasync/JsonReader;->limit:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/android/picasasync/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1019
    const-string v2, "Unterminated escape sequence"

    invoke-direct {p0, v2}, Lcom/google/android/picasasync/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 1022
    :cond_0
    iget-object v2, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    aget-char v0, v2, v3

    .line 1023
    .local v0, "escaped":C
    sparse-switch v0, :sswitch_data_0

    .line 1052
    .end local v0    # "escaped":C
    :goto_0
    return v0

    .line 1025
    .restart local v0    # "escaped":C
    :sswitch_0
    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x4

    iget v3, p0, Lcom/google/android/picasasync/JsonReader;->limit:I

    if-le v2, v3, :cond_1

    invoke-direct {p0, v5}, Lcom/google/android/picasasync/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1026
    const-string v2, "Unterminated escape sequence"

    invoke-direct {p0, v2}, Lcom/google/android/picasasync/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 1029
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([CII)V

    .line 1030
    .local v1, "hex":Ljava/lang/String;
    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    .line 1031
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v0, v2

    goto :goto_0

    .line 1034
    .end local v1    # "hex":Ljava/lang/String;
    :sswitch_1
    const/16 v0, 0x9

    goto :goto_0

    .line 1037
    :sswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 1040
    :sswitch_3
    const/16 v0, 0xa

    goto :goto_0

    .line 1043
    :sswitch_4
    const/16 v0, 0xd

    goto :goto_0

    .line 1046
    :sswitch_5
    const/16 v0, 0xc

    goto :goto_0

    .line 1023
    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private readLiteral()Lcom/google/android/picasasync/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1060
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/picasasync/JsonReader;->nextLiteral(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/JsonReader;->value:Ljava/lang/String;

    .line 1061
    iget v0, p0, Lcom/google/android/picasasync/JsonReader;->valueLength:I

    if-nez v0, :cond_0

    .line 1062
    const-string v0, "Expected literal value"

    invoke-direct {p0, v0}, Lcom/google/android/picasasync/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1064
    :cond_0
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->decodeLiteral()Lcom/google/android/picasasync/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    .line 1065
    iget-object v0, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    sget-object v1, Lcom/google/android/picasasync/JsonToken;->STRING:Lcom/google/android/picasasync/JsonToken;

    if-ne v0, v1, :cond_1

    .line 1066
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->checkLenient()V

    .line 1068
    :cond_1
    iget-object v0, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    return-object v0
.end method

.method private replaceTop(Lcom/google/android/picasasync/JsonScope;)V
    .locals 2
    .param p1, "newTop"    # Lcom/google/android/picasasync/JsonScope;

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/android/picasasync/JsonReader;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/picasasync/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 582
    return-void
.end method

.method private skipTo(Ljava/lang/String;)Z
    .locals 3
    .param p1, "toFind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 860
    :goto_0
    iget v1, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->limit:I

    if-le v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/picasasync/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 861
    :cond_0
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 862
    iget-object v1, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_1

    .line 860
    iget v1, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    goto :goto_0

    .line 861
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 866
    :cond_2
    const/4 v1, 0x1

    .line 868
    .end local v0    # "c":I
    :goto_2
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private skipToEndOfLine()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 850
    :cond_0
    iget v1, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->limit:I

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/picasasync/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 851
    :cond_1
    iget-object v1, p0, Lcom/google/android/picasasync/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/picasasync/JsonReader;->pos:I

    aget-char v0, v1, v2

    .line 852
    .local v0, "c":C
    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 856
    .end local v0    # "c":C
    :cond_2
    return-void
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1166
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    sget-object v0, Lcom/google/android/picasasync/JsonToken;->BEGIN_ARRAY:Lcom/google/android/picasasync/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/android/picasasync/JsonReader;->expect(Lcom/google/android/picasasync/JsonToken;)V

    .line 279
    return-void
.end method

.method public beginObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    sget-object v0, Lcom/google/android/picasasync/JsonToken;->BEGIN_OBJECT:Lcom/google/android/picasasync/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/android/picasasync/JsonReader;->expect(Lcom/google/android/picasasync/JsonToken;)V

    .line 295
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 536
    iput-object v0, p0, Lcom/google/android/picasasync/JsonReader;->value:Ljava/lang/String;

    .line 537
    iput-object v0, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    .line 538
    iget-object v0, p0, Lcom/google/android/picasasync/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 539
    iget-object v0, p0, Lcom/google/android/picasasync/JsonReader;->stack:Ljava/util/List;

    sget-object v1, Lcom/google/android/picasasync/JsonScope;->CLOSED:Lcom/google/android/picasasync/JsonScope;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    iget-object v0, p0, Lcom/google/android/picasasync/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 541
    return-void
.end method

.method public endArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    sget-object v0, Lcom/google/android/picasasync/JsonToken;->END_ARRAY:Lcom/google/android/picasasync/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/android/picasasync/JsonReader;->expect(Lcom/google/android/picasasync/JsonToken;)V

    .line 287
    return-void
.end method

.method public endObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    sget-object v0, Lcom/google/android/picasasync/JsonToken;->END_OBJECT:Lcom/google/android/picasasync/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/android/picasasync/JsonReader;->expect(Lcom/google/android/picasasync/JsonToken;)V

    .line 303
    return-void
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/google/android/picasasync/JsonReader;->peek()Lcom/google/android/picasasync/JsonToken;

    .line 321
    iget-object v0, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    sget-object v1, Lcom/google/android/picasasync/JsonToken;->END_OBJECT:Lcom/google/android/picasasync/JsonToken;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    sget-object v1, Lcom/google/android/picasasync/JsonToken;->END_ARRAY:Lcom/google/android/picasasync/JsonToken;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextDouble()D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/google/android/picasasync/JsonReader;->peek()Lcom/google/android/picasasync/JsonToken;

    .line 460
    iget-object v2, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    sget-object v3, Lcom/google/android/picasasync/JsonToken;->STRING:Lcom/google/android/picasasync/JsonToken;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    sget-object v3, Lcom/google/android/picasasync/JsonToken;->NUMBER:Lcom/google/android/picasasync/JsonToken;

    if-eq v2, v3, :cond_0

    .line 461
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a double but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 464
    :cond_0
    iget-object v2, p0, Lcom/google/android/picasasync/JsonReader;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 465
    .local v0, "result":D
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->advance()Lcom/google/android/picasasync/JsonToken;

    .line 466
    return-wide v0
.end method

.method public nextInt()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/google/android/picasasync/JsonReader;->peek()Lcom/google/android/picasasync/JsonToken;

    .line 512
    iget-object v4, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    sget-object v5, Lcom/google/android/picasasync/JsonToken;->STRING:Lcom/google/android/picasasync/JsonToken;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    sget-object v5, Lcom/google/android/picasasync/JsonToken;->NUMBER:Lcom/google/android/picasasync/JsonToken;

    if-eq v4, v5, :cond_0

    .line 513
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected an int but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 518
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/google/android/picasasync/JsonReader;->value:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 527
    .local v3, "result":I
    :cond_1
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->advance()Lcom/google/android/picasasync/JsonToken;

    .line 528
    return v3

    .line 519
    .end local v3    # "result":I
    :catch_0
    move-exception v2

    .line 520
    .local v2, "ignored":Ljava/lang/NumberFormatException;
    iget-object v4, p0, Lcom/google/android/picasasync/JsonReader;->value:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 521
    .local v0, "asDouble":D
    double-to-int v3, v0

    .line 522
    .restart local v3    # "result":I
    int-to-double v4, v3

    cmpl-double v4, v4, v0

    if-eqz v4, :cond_1

    .line 523
    new-instance v4, Ljava/lang/NumberFormatException;

    iget-object v5, p0, Lcom/google/android/picasasync/JsonReader;->value:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public nextLong()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/google/android/picasasync/JsonReader;->peek()Lcom/google/android/picasasync/JsonToken;

    .line 481
    iget-object v5, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    sget-object v6, Lcom/google/android/picasasync/JsonToken;->STRING:Lcom/google/android/picasasync/JsonToken;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    sget-object v6, Lcom/google/android/picasasync/JsonToken;->NUMBER:Lcom/google/android/picasasync/JsonToken;

    if-eq v5, v6, :cond_0

    .line 482
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected a long but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 487
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/google/android/picasasync/JsonReader;->value:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 496
    .local v3, "result":J
    :cond_1
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->advance()Lcom/google/android/picasasync/JsonToken;

    .line 497
    return-wide v3

    .line 488
    .end local v3    # "result":J
    :catch_0
    move-exception v2

    .line 489
    .local v2, "ignored":Ljava/lang/NumberFormatException;
    iget-object v5, p0, Lcom/google/android/picasasync/JsonReader;->value:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 490
    .local v0, "asDouble":D
    double-to-long v3, v0

    .line 491
    .restart local v3    # "result":J
    long-to-double v5, v3

    cmpl-double v5, v5, v0

    if-eqz v5, :cond_1

    .line 492
    new-instance v5, Ljava/lang/NumberFormatException;

    iget-object v6, p0, Lcom/google/android/picasasync/JsonReader;->value:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public nextName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/google/android/picasasync/JsonReader;->peek()Lcom/google/android/picasasync/JsonToken;

    .line 390
    iget-object v1, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    sget-object v2, Lcom/google/android/picasasync/JsonToken;->NAME:Lcom/google/android/picasasync/JsonToken;

    if-eq v1, v2, :cond_0

    .line 391
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a name but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/picasasync/JsonReader;->peek()Lcom/google/android/picasasync/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/google/android/picasasync/JsonReader;->name:Ljava/lang/String;

    .line 394
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->advance()Lcom/google/android/picasasync/JsonToken;

    .line 395
    return-object v0
.end method

.method public nextString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/google/android/picasasync/JsonReader;->peek()Lcom/google/android/picasasync/JsonToken;

    .line 408
    iget-object v1, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    sget-object v2, Lcom/google/android/picasasync/JsonToken;->STRING:Lcom/google/android/picasasync/JsonToken;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    sget-object v2, Lcom/google/android/picasasync/JsonToken;->NUMBER:Lcom/google/android/picasasync/JsonToken;

    if-eq v1, v2, :cond_0

    .line 409
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a string but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/picasasync/JsonReader;->peek()Lcom/google/android/picasasync/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/google/android/picasasync/JsonReader;->value:Ljava/lang/String;

    .line 413
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->advance()Lcom/google/android/picasasync/JsonToken;

    .line 414
    return-object v0
.end method

.method public peek()Lcom/google/android/picasasync/JsonToken;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 328
    iget-object v3, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    if-eqz v3, :cond_1

    .line 329
    iget-object v1, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    .line 359
    :cond_0
    :goto_0
    return-object v1

    .line 332
    :cond_1
    sget-object v3, Lcom/google/android/picasasync/JsonReader$1;->$SwitchMap$com$google$android$picasasync$JsonScope:[I

    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->peekStack()Lcom/google/android/picasasync/JsonScope;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/picasasync/JsonScope;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 364
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 334
    :pswitch_0
    sget-object v3, Lcom/google/android/picasasync/JsonScope;->NONEMPTY_DOCUMENT:Lcom/google/android/picasasync/JsonScope;

    invoke-direct {p0, v3}, Lcom/google/android/picasasync/JsonReader;->replaceTop(Lcom/google/android/picasasync/JsonScope;)V

    .line 335
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->nextValue()Lcom/google/android/picasasync/JsonToken;

    move-result-object v1

    .line 336
    .local v1, "firstToken":Lcom/google/android/picasasync/JsonToken;
    iget-boolean v3, p0, Lcom/google/android/picasasync/JsonReader;->lenient:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    sget-object v4, Lcom/google/android/picasasync/JsonToken;->BEGIN_ARRAY:Lcom/google/android/picasasync/JsonToken;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    sget-object v4, Lcom/google/android/picasasync/JsonToken;->BEGIN_OBJECT:Lcom/google/android/picasasync/JsonToken;

    if-eq v3, v4, :cond_0

    .line 337
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected JSON document to start with \'[\' or \'{\' but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 342
    .end local v1    # "firstToken":Lcom/google/android/picasasync/JsonToken;
    :pswitch_1
    invoke-direct {p0, v6}, Lcom/google/android/picasasync/JsonReader;->nextInArray(Z)Lcom/google/android/picasasync/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 344
    :pswitch_2
    invoke-direct {p0, v5}, Lcom/google/android/picasasync/JsonReader;->nextInArray(Z)Lcom/google/android/picasasync/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 346
    :pswitch_3
    invoke-direct {p0, v6}, Lcom/google/android/picasasync/JsonReader;->nextInObject(Z)Lcom/google/android/picasasync/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 348
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->objectValue()Lcom/google/android/picasasync/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 350
    :pswitch_5
    invoke-direct {p0, v5}, Lcom/google/android/picasasync/JsonReader;->nextInObject(Z)Lcom/google/android/picasasync/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 353
    :pswitch_6
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->nextValue()Lcom/google/android/picasasync/JsonToken;

    move-result-object v2

    .line 354
    .local v2, "token":Lcom/google/android/picasasync/JsonToken;
    iget-boolean v3, p0, Lcom/google/android/picasasync/JsonReader;->lenient:Z

    if-eqz v3, :cond_2

    move-object v1, v2

    .line 355
    goto :goto_0

    .line 357
    :cond_2
    const-string v3, "Expected EOF"

    invoke-direct {p0, v3}, Lcom/google/android/picasasync/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    .end local v2    # "token":Lcom/google/android/picasasync/JsonToken;
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/io/EOFException;
    sget-object v1, Lcom/google/android/picasasync/JsonToken;->END_DOCUMENT:Lcom/google/android/picasasync/JsonToken;

    iput-object v1, p0, Lcom/google/android/picasasync/JsonReader;->token:Lcom/google/android/picasasync/JsonToken;

    goto :goto_0

    .line 362
    .end local v0    # "e":Ljava/io/EOFException;
    :pswitch_7
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "JsonReader is closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 332
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public skipValue()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 549
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/picasasync/JsonReader;->skipping:Z

    .line 551
    const/4 v0, 0x0

    .line 553
    .local v0, "count":I
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->advance()Lcom/google/android/picasasync/JsonToken;

    move-result-object v1

    .line 554
    .local v1, "token":Lcom/google/android/picasasync/JsonToken;
    sget-object v2, Lcom/google/android/picasasync/JsonToken;->BEGIN_ARRAY:Lcom/google/android/picasasync/JsonToken;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/google/android/picasasync/JsonToken;->BEGIN_OBJECT:Lcom/google/android/picasasync/JsonToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_3

    .line 555
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 559
    :cond_2
    :goto_0
    if-nez v0, :cond_0

    .line 561
    iput-boolean v3, p0, Lcom/google/android/picasasync/JsonReader;->skipping:Z

    .line 563
    return-void

    .line 556
    :cond_3
    :try_start_1
    sget-object v2, Lcom/google/android/picasasync/JsonToken;->END_ARRAY:Lcom/google/android/picasasync/JsonToken;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/google/android/picasasync/JsonToken;->END_OBJECT:Lcom/google/android/picasasync/JsonToken;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, v2, :cond_2

    .line 557
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 561
    .end local v1    # "token":Lcom/google/android/picasasync/JsonToken;
    :catchall_0
    move-exception v2

    iput-boolean v3, p0, Lcom/google/android/picasasync/JsonReader;->skipping:Z

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " near "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/picasasync/JsonReader;->getSnippet()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
