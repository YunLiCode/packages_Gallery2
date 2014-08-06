.class public Lcom/google/android/apps/lightcycle/xmp/XmpUtil;
.super Ljava/lang/Object;
.source "XmpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/xmp/XmpUtil$1;,
        Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 59
    :try_start_0
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v1

    const-string v2, "http://ns.google.com/photos/1.0/panorama/"

    const-string v3, "GPano"

    invoke-interface {v1, v2, v3}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .local v0, "e":Lcom/adobe/xmp/XMPException;
    :goto_0
    return-void

    .line 61
    .end local v0    # "e":Lcom/adobe/xmp/XMPException;
    :catch_0
    move-exception v0

    .line 62
    .restart local v0    # "e":Lcom/adobe/xmp/XMPException;
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 391
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createXMPMeta()Lcom/adobe/xmp/XMPMeta;
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->create()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    return-object v0
.end method

.method public static extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;
    .locals 11
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v4, 0x0

    .line 94
    const/4 v7, 0x1

    invoke-static {p0, v7}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v6

    .line 95
    .local v6, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    if-nez v6, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-object v4

    .line 99
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;

    .line 100
    .local v5, "section":Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;
    iget-object v7, v5, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->data:[B

    invoke-static {v7}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->hasXMPHeader([B)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 101
    iget-object v7, v5, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->data:[B

    invoke-static {v7}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->getXMPContentEnd([B)I

    move-result v2

    .line 102
    .local v2, "end":I
    add-int/lit8 v7, v2, -0x1d

    new-array v0, v7, [B

    .line 103
    .local v0, "buffer":[B
    iget-object v7, v5, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->data:[B

    const/16 v8, 0x1d

    const/4 v9, 0x0

    array-length v10, v0

    invoke-static {v7, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    :try_start_0
    invoke-static {v0}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromBuffer([B)Lcom/adobe/xmp/XMPMeta;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 107
    .local v4, "result":Lcom/adobe/xmp/XMPMeta;
    goto :goto_0

    .line 108
    .end local v4    # "result":Lcom/adobe/xmp/XMPMeta;
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Lcom/adobe/xmp/XMPException;
    const-string v7, "XmpUtil"

    const-string v8, "XMP parse error"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getXMPContentEnd([B)I
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 306
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 307
    aget-byte v1, p0, v0

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_0

    .line 308
    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p0, v1

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_0

    .line 309
    add-int/lit8 v1, v0, 0x1

    .line 314
    :goto_1
    return v1

    .line 306
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 314
    :cond_1
    array-length v1, p0

    goto :goto_1
.end method

.method private static hasXMPHeader([B)Z
    .locals 6
    .param p0, "data"    # [B

    .prologue
    const/16 v4, 0x1d

    const/4 v2, 0x0

    .line 280
    array-length v3, p0

    if-ge v3, v4, :cond_1

    .line 292
    :cond_0
    :goto_0
    return v2

    .line 284
    :cond_1
    const/16 v3, 0x1d

    :try_start_0
    new-array v1, v3, [B

    .line 285
    .local v1, "header":[B
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1d

    invoke-static {p0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v4, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    const/4 v2, 0x1

    goto :goto_0

    .line 289
    .end local v1    # "header":[B
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private static insertXMPSection(Ljava/util/List;Lcom/adobe/xmp/XMPMeta;)Ljava/util/List;
    .locals 13
    .param p1, "meta"    # Lcom/adobe/xmp/XMPMeta;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;",
            ">;",
            "Lcom/adobe/xmp/XMPMeta;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    const/16 v12, 0x1d

    const/16 v11, 0xe1

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 224
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-gt v8, v5, :cond_1

    :cond_0
    move-object p0, v3

    .line 270
    .end local p0    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    :goto_0
    return-object p0

    .line 229
    .restart local p0    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    :cond_1
    :try_start_0
    new-instance v4, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-direct {v4}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    .line 230
    .local v4, "options":Lcom/adobe/xmp/options/SerializeOptions;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/adobe/xmp/options/SerializeOptions;->setUseCompactFormat(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 234
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/adobe/xmp/options/SerializeOptions;->setOmitPacketWrapper(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 235
    invoke-static {p1, v4}, Lcom/adobe/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)[B
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 240
    .local v0, "buffer":[B
    array-length v8, v0

    const v10, 0xffde

    if-le v8, v10, :cond_2

    move-object p0, v3

    .line 242
    goto :goto_0

    .line 236
    .end local v0    # "buffer":[B
    .end local v4    # "options":Lcom/adobe/xmp/options/SerializeOptions;
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Lcom/adobe/xmp/XMPException;
    const-string v8, "XmpUtil"

    const-string v9, "Serialize xmp failed"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v3

    .line 238
    goto :goto_0

    .line 245
    .end local v1    # "e":Lcom/adobe/xmp/XMPException;
    .restart local v0    # "buffer":[B
    .restart local v4    # "options":Lcom/adobe/xmp/options/SerializeOptions;
    :cond_2
    array-length v8, v0

    add-int/lit8 v8, v8, 0x1d

    new-array v7, v8, [B

    .line 246
    .local v7, "xmpdata":[B
    const-string v8, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v9, v7, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    array-length v8, v0

    invoke-static {v0, v9, v7, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    new-instance v6, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;

    invoke-direct {v6, v3}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;-><init>(Lcom/google/android/apps/lightcycle/xmp/XmpUtil$1;)V

    .line 249
    .local v6, "xmpSection":Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;
    iput v11, v6, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->marker:I

    .line 251
    array-length v8, v7

    add-int/lit8 v8, v8, 0x2

    iput v8, v6, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->length:I

    .line 252
    iput-object v7, v6, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->data:[B

    .line 254
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 256
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;

    iget v8, v8, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->marker:I

    if-ne v8, v11, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;

    iget-object v8, v8, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->data:[B

    invoke-static {v8}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->hasXMPHeader([B)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 259
    invoke-interface {p0, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 254
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 265
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v3, "newSections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;

    iget v8, v8, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->marker:I

    if-ne v8, v11, :cond_5

    .line 267
    .local v5, "position":I
    :goto_2
    invoke-interface {p0, v9, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 268
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {p0, v5, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object p0, v3

    .line 270
    goto/16 :goto_0

    .end local v5    # "position":I
    :cond_5
    move v5, v9

    .line 266
    goto :goto_2
.end method

.method private static parse(Ljava/io/InputStream;Z)Ljava/util/List;
    .locals 14
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "readMetaOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v13, 0xff

    const/4 v12, -0x1

    const/4 v8, 0x0

    .line 328
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v9

    if-ne v9, v13, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    const/16 v10, 0xd8

    if-eq v9, v10, :cond_3

    .line 381
    :cond_0
    if-eqz p0, :cond_1

    .line 383
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_0
    move-object v7, v8

    .line 386
    :cond_2
    :goto_1
    return-object v7

    .line 331
    :cond_3
    :try_start_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v7, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    :goto_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .local v0, "c":I
    if-eq v0, v12, :cond_11

    .line 334
    if-eq v0, v13, :cond_5

    .line 381
    if-eqz p0, :cond_4

    .line 383
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_4
    :goto_3
    move-object v7, v8

    .line 386
    goto :goto_1

    .line 338
    :cond_5
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-eq v0, v13, :cond_5

    .line 340
    if-ne v0, v12, :cond_7

    .line 381
    if-eqz p0, :cond_6

    .line 383
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_6
    :goto_4
    move-object v7, v8

    .line 386
    goto :goto_1

    .line 343
    :cond_7
    move v5, v0

    .line 344
    .local v5, "marker":I
    const/16 v9, 0xda

    if-ne v5, v9, :cond_9

    .line 347
    if-nez p1, :cond_8

    .line 348
    :try_start_6
    new-instance v6, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;-><init>(Lcom/google/android/apps/lightcycle/xmp/XmpUtil$1;)V

    .line 349
    .local v6, "section":Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;
    iput v5, v6, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->marker:I

    .line 350
    const/4 v9, -0x1

    iput v9, v6, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->length:I

    .line 351
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v9

    new-array v9, v9, [B

    iput-object v9, v6, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->data:[B

    .line 352
    iget-object v9, v6, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->data:[B

    const/4 v10, 0x0

    iget-object v11, v6, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->data:[B

    array-length v11, v11

    invoke-virtual {p0, v9, v10, v11}, Ljava/io/InputStream;->read([BII)I

    .line 353
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 381
    .end local v6    # "section":Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;
    :cond_8
    if-eqz p0, :cond_2

    .line 383
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    .line 384
    :catch_0
    move-exception v8

    goto :goto_1

    .line 357
    :cond_9
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 358
    .local v3, "lh":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v4

    .line 359
    .local v4, "ll":I
    if-eq v3, v12, :cond_a

    if-ne v4, v12, :cond_c

    .line 381
    :cond_a
    if-eqz p0, :cond_b

    .line 383
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_b
    :goto_5
    move-object v7, v8

    .line 386
    goto :goto_1

    .line 362
    :cond_c
    shl-int/lit8 v9, v3, 0x8

    or-int v2, v9, v4

    .line 363
    .local v2, "length":I
    if-eqz p1, :cond_d

    const/16 v9, 0xe1

    if-ne v0, v9, :cond_f

    .line 364
    :cond_d
    :try_start_a
    new-instance v6, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;-><init>(Lcom/google/android/apps/lightcycle/xmp/XmpUtil$1;)V

    .line 365
    .restart local v6    # "section":Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;
    iput v5, v6, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->marker:I

    .line 366
    iput v2, v6, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->length:I

    .line 367
    add-int/lit8 v9, v2, -0x2

    new-array v9, v9, [B

    iput-object v9, v6, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->data:[B

    .line 368
    iget-object v9, v6, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->data:[B

    const/4 v10, 0x0

    add-int/lit8 v11, v2, -0x2

    invoke-virtual {p0, v9, v10, v11}, Ljava/io/InputStream;->read([BII)I

    .line 369
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 377
    .end local v0    # "c":I
    .end local v2    # "length":I
    .end local v3    # "lh":I
    .end local v4    # "ll":I
    .end local v5    # "marker":I
    .end local v6    # "section":Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;
    .end local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    :catch_1
    move-exception v1

    .line 378
    .local v1, "e":Ljava/io/IOException;
    :try_start_b
    const-string v9, "XmpUtil"

    const-string v10, "Could not parse file."

    invoke-static {v9, v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 381
    if-eqz p0, :cond_e

    .line 383
    :try_start_c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    :cond_e
    :goto_6
    move-object v7, v8

    .line 386
    goto/16 :goto_1

    .line 373
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "c":I
    .restart local v2    # "length":I
    .restart local v3    # "lh":I
    .restart local v4    # "ll":I
    .restart local v5    # "marker":I
    .restart local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    :cond_f
    add-int/lit8 v9, v2, -0x2

    int-to-long v9, v9

    :try_start_d
    invoke-virtual {p0, v9, v10}, Ljava/io/InputStream;->skip(J)J
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2

    .line 381
    .end local v0    # "c":I
    .end local v2    # "length":I
    .end local v3    # "lh":I
    .end local v4    # "ll":I
    .end local v5    # "marker":I
    .end local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    :catchall_0
    move-exception v8

    if-eqz p0, :cond_10

    .line 383
    :try_start_e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 386
    :cond_10
    :goto_7
    throw v8

    .line 381
    .restart local v0    # "c":I
    .restart local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    :cond_11
    if-eqz p0, :cond_2

    .line 383
    :try_start_f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_1

    .line 384
    :catch_2
    move-exception v8

    goto/16 :goto_1

    .end local v0    # "c":I
    .end local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    :catch_3
    move-exception v9

    goto/16 :goto_0

    .restart local v0    # "c":I
    .restart local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    :catch_4
    move-exception v9

    goto/16 :goto_3

    :catch_5
    move-exception v9

    goto/16 :goto_4

    .restart local v3    # "lh":I
    .restart local v4    # "ll":I
    .restart local v5    # "marker":I
    :catch_6
    move-exception v9

    goto :goto_5

    .end local v0    # "c":I
    .end local v3    # "lh":I
    .end local v4    # "ll":I
    .end local v5    # "marker":I
    .end local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    .restart local v1    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v9

    goto :goto_6

    .end local v1    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v9

    goto :goto_7
.end method

.method private static writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V
    .locals 6
    .param p0, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    const/16 v5, 0xff

    .line 206
    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write(I)V

    .line 207
    const/16 v4, 0xd8

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 208
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;

    .line 209
    .local v3, "section":Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;
    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write(I)V

    .line 210
    iget v4, v3, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->marker:I

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 211
    iget v4, v3, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->length:I

    if-lez v4, :cond_0

    .line 213
    iget v4, v3, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->length:I

    shr-int/lit8 v1, v4, 0x8

    .line 214
    .local v1, "lh":I
    iget v4, v3, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->length:I

    and-int/lit16 v2, v4, 0xff

    .line 215
    .local v2, "ll":I
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 216
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 218
    .end local v1    # "lh":I
    .end local v2    # "ll":I
    :cond_0
    iget-object v4, v3, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->data:[B

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 220
    .end local v3    # "section":Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;
    :cond_1
    return-void
.end method

.method public static writeXMPMeta(Ljava/lang/String;Lcom/adobe/xmp/XMPMeta;)Z
    .locals 8
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "meta"    # Lcom/adobe/xmp/XMPMeta;

    .prologue
    const/4 v4, 0x0

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".jpeg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 138
    const-string v5, "XMP parse: only jpeg file is supported"

    invoke-static {v5}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 169
    :cond_0
    :goto_0
    return v4

    .line 141
    :cond_1
    const/4 v3, 0x0

    .line 143
    .local v3, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v3

    .line 144
    invoke-static {v3, p1}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->insertXMPSection(Ljava/util/List;Lcom/adobe/xmp/XMPMeta;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 145
    if-eqz v3, :cond_0

    .line 152
    const/4 v1, 0x0

    .line 155
    .local v1, "os":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .local v2, "os":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static {v2, v3}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 161
    if-eqz v2, :cond_2

    .line 163
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 169
    :cond_2
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 148
    .end local v2    # "os":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v5, "XmpUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not read file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 157
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v5, "XmpUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Write file failed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 161
    if-eqz v1, :cond_0

    .line 163
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 164
    :catch_2
    move-exception v5

    goto :goto_0

    .line 161
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_3

    .line 163
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 166
    :cond_3
    :goto_4
    throw v4

    .line 164
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    goto :goto_1

    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v5

    goto :goto_4

    .line 161
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 157
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
