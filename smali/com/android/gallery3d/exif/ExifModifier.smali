.class Lcom/android/gallery3d/exif/ExifModifier;
.super Ljava/lang/Object;
.source "ExifModifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/exif/ExifModifier$TagOffset;
    }
.end annotation


# instance fields
.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private final mInterface:Lcom/android/gallery3d/exif/ExifInterface;

.field private mOffsetBase:I

.field private final mTagOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/exif/ExifModifier$TagOffset;",
            ">;"
        }
    .end annotation
.end field

.field private final mTagToModified:Lcom/android/gallery3d/exif/ExifData;


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/android/gallery3d/exif/ExifInterface;)V
    .locals 5
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "iRef"    # Lcom/android/gallery3d/exif/ExifInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/exif/ExifModifier;->mTagOffsets:Ljava/util/List;

    .line 50
    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/exif/ExifModifier;->mOffsetBase:I

    .line 52
    iput-object p2, p0, Lcom/android/gallery3d/exif/ExifModifier;->mInterface:Lcom/android/gallery3d/exif/ExifInterface;

    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Lcom/android/gallery3d/exif/ByteBufferInputStream;

    invoke-direct {v1, p1}, Lcom/android/gallery3d/exif/ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .end local v0    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    :try_start_1
    iget-object v3, p0, Lcom/android/gallery3d/exif/ExifModifier;->mInterface:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-static {v1, v3}, Lcom/android/gallery3d/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/android/gallery3d/exif/ExifInterface;)Lcom/android/gallery3d/exif/ExifParser;

    move-result-object v2

    .line 58
    .local v2, "parser":Lcom/android/gallery3d/exif/ExifParser;
    new-instance v3, Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v2}, Lcom/android/gallery3d/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/gallery3d/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v3, p0, Lcom/android/gallery3d/exif/ExifModifier;->mTagToModified:Lcom/android/gallery3d/exif/ExifData;

    .line 59
    iget v3, p0, Lcom/android/gallery3d/exif/ExifModifier;->mOffsetBase:I

    invoke-virtual {v2}, Lcom/android/gallery3d/exif/ExifParser;->getTiffStartPosition()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/exif/ExifModifier;->mOffsetBase:I

    .line 60
    iget-object v3, p0, Lcom/android/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 64
    return-void

    .line 62
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "parser":Lcom/android/gallery3d/exif/ExifParser;
    .restart local v0    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v3

    .end local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "is":Ljava/io/InputStream;
    goto :goto_0
.end method

.method private modify()V
    .locals 4

    .prologue
    .line 142
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifModifier;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 143
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifModifier;->mTagOffsets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/exif/ExifModifier$TagOffset;

    .line 144
    .local v1, "tagOffset":Lcom/android/gallery3d/exif/ExifModifier$TagOffset;
    iget-object v2, v1, Lcom/android/gallery3d/exif/ExifModifier$TagOffset;->mTag:Lcom/android/gallery3d/exif/ExifTag;

    iget v3, v1, Lcom/android/gallery3d/exif/ExifModifier$TagOffset;->mOffset:I

    invoke-direct {p0, v2, v3}, Lcom/android/gallery3d/exif/ExifModifier;->writeTagValue(Lcom/android/gallery3d/exif/ExifTag;I)V

    goto :goto_0

    .line 146
    .end local v1    # "tagOffset":Lcom/android/gallery3d/exif/ExifModifier$TagOffset;
    :cond_0
    return-void
.end method

.method private writeTagValue(Lcom/android/gallery3d/exif/ExifTag;I)V
    .locals 7
    .param p1, "tag"    # Lcom/android/gallery3d/exif/ExifTag;
    .param p2, "offset"    # I

    .prologue
    const/4 v6, 0x0

    .line 153
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/android/gallery3d/exif/ExifModifier;->mOffsetBase:I

    add-int/2addr v5, p2

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 154
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 191
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 156
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getStringByte()[B

    move-result-object v0

    .line 157
    .local v0, "buf":[B
    array-length v4, v0

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 158
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aput-byte v6, v0, v4

    .line 159
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 161
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 162
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 167
    .end local v0    # "buf":[B
    :pswitch_2
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v2

    .local v2, "n":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 168
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Lcom/android/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 173
    .end local v1    # "i":I
    .end local v2    # "n":I
    :pswitch_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v2

    .restart local v2    # "n":I
    :goto_2
    if-ge v1, v2, :cond_0

    .line 174
    invoke-virtual {p1, v1}, Lcom/android/gallery3d/exif/ExifTag;->getRational(I)Lcom/android/gallery3d/exif/Rational;

    move-result-object v3

    .line 175
    .local v3, "v":Lcom/android/gallery3d/exif/Rational;
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->getNumerator()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 176
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 181
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "v":Lcom/android/gallery3d/exif/Rational;
    :pswitch_4
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v4

    new-array v0, v4, [B

    .line 182
    .restart local v0    # "buf":[B
    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifTag;->getBytes([B)V

    .line 183
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 186
    .end local v0    # "buf":[B
    :pswitch_5
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v2

    .restart local v2    # "n":I
    :goto_3
    if-ge v1, v2, :cond_0

    .line 187
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Lcom/android/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v5

    long-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected commit()Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v8, 0x0

    .line 73
    .local v8, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v9, Lcom/android/gallery3d/exif/ByteBufferInputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v9, v14}, Lcom/android/gallery3d/exif/ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    .end local v8    # "is":Ljava/io/InputStream;
    .local v9, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 75
    .local v4, "flag":I
    const/4 v14, 0x5

    :try_start_1
    new-array v7, v14, [Lcom/android/gallery3d/exif/IfdData;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/exif/ExifModifier;->mTagToModified:Lcom/android/gallery3d/exif/ExifData;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v15

    aput-object v15, v7, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/exif/ExifModifier;->mTagToModified:Lcom/android/gallery3d/exif/ExifData;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v15

    aput-object v15, v7, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/exif/ExifModifier;->mTagToModified:Lcom/android/gallery3d/exif/ExifData;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v15

    aput-object v15, v7, v14

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/exif/ExifModifier;->mTagToModified:Lcom/android/gallery3d/exif/ExifData;

    const/16 v16, 0x3

    invoke-virtual/range {v15 .. v16}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v15

    aput-object v15, v7, v14

    const/4 v14, 0x4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/exif/ExifModifier;->mTagToModified:Lcom/android/gallery3d/exif/ExifData;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v15

    aput-object v15, v7, v14

    .line 83
    .local v7, "ifdDatas":[Lcom/android/gallery3d/exif/IfdData;
    const/4 v14, 0x0

    aget-object v14, v7, v14

    if-eqz v14, :cond_0

    .line 84
    or-int/lit8 v4, v4, 0x1

    .line 86
    :cond_0
    const/4 v14, 0x1

    aget-object v14, v7, v14

    if-eqz v14, :cond_1

    .line 87
    or-int/lit8 v4, v4, 0x2

    .line 89
    :cond_1
    const/4 v14, 0x2

    aget-object v14, v7, v14

    if-eqz v14, :cond_2

    .line 90
    or-int/lit8 v4, v4, 0x4

    .line 92
    :cond_2
    const/4 v14, 0x4

    aget-object v14, v7, v14

    if-eqz v14, :cond_3

    .line 93
    or-int/lit8 v4, v4, 0x8

    .line 95
    :cond_3
    const/4 v14, 0x3

    aget-object v14, v7, v14

    if-eqz v14, :cond_4

    .line 96
    or-int/lit8 v4, v4, 0x10

    .line 99
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/exif/ExifModifier;->mInterface:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-static {v9, v4, v14}, Lcom/android/gallery3d/exif/ExifParser;->parse(Ljava/io/InputStream;ILcom/android/gallery3d/exif/ExifInterface;)Lcom/android/gallery3d/exif/ExifParser;

    move-result-object v13

    .line 100
    .local v13, "parser":Lcom/android/gallery3d/exif/ExifParser;
    invoke-virtual {v13}, Lcom/android/gallery3d/exif/ExifParser;->next()I

    move-result v3

    .line 101
    .local v3, "event":I
    const/4 v2, 0x0

    .line 102
    .local v2, "currIfd":Lcom/android/gallery3d/exif/IfdData;
    :goto_0
    const/4 v14, 0x5

    if-eq v3, v14, :cond_8

    .line 103
    packed-switch v3, :pswitch_data_0

    .line 127
    :cond_5
    :goto_1
    invoke-virtual {v13}, Lcom/android/gallery3d/exif/ExifParser;->next()I

    move-result v3

    goto :goto_0

    .line 105
    :pswitch_0
    invoke-virtual {v13}, Lcom/android/gallery3d/exif/ExifParser;->getCurrentIfd()I

    move-result v14

    aget-object v2, v7, v14

    .line 106
    if-nez v2, :cond_5

    .line 107
    invoke-virtual {v13}, Lcom/android/gallery3d/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 136
    .end local v2    # "currIfd":Lcom/android/gallery3d/exif/IfdData;
    .end local v3    # "event":I
    .end local v7    # "ifdDatas":[Lcom/android/gallery3d/exif/IfdData;
    .end local v13    # "parser":Lcom/android/gallery3d/exif/ExifParser;
    :catchall_0
    move-exception v14

    move-object v8, v9

    .end local v4    # "flag":I
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    :goto_2
    invoke-static {v8}, Lcom/android/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v14

    .line 111
    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v2    # "currIfd":Lcom/android/gallery3d/exif/IfdData;
    .restart local v3    # "event":I
    .restart local v4    # "flag":I
    .restart local v7    # "ifdDatas":[Lcom/android/gallery3d/exif/IfdData;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v13    # "parser":Lcom/android/gallery3d/exif/ExifParser;
    :pswitch_1
    :try_start_2
    invoke-virtual {v13}, Lcom/android/gallery3d/exif/ExifParser;->getTag()Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v12

    .line 112
    .local v12, "oldTag":Lcom/android/gallery3d/exif/ExifTag;
    invoke-virtual {v12}, Lcom/android/gallery3d/exif/ExifTag;->getTagId()S

    move-result v14

    invoke-virtual {v2, v14}, Lcom/android/gallery3d/exif/IfdData;->getTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v11

    .line 113
    .local v11, "newTag":Lcom/android/gallery3d/exif/ExifTag;
    if-eqz v11, :cond_5

    .line 114
    invoke-virtual {v11}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v14

    invoke-virtual {v12}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v15

    if-ne v14, v15, :cond_6

    invoke-virtual {v11}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v14

    invoke-virtual {v12}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v15

    if-eq v14, v15, :cond_7

    .line 116
    :cond_6
    const/4 v14, 0x0

    .line 136
    invoke-static {v9}, Lcom/android/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 138
    .end local v11    # "newTag":Lcom/android/gallery3d/exif/ExifTag;
    .end local v12    # "oldTag":Lcom/android/gallery3d/exif/ExifTag;
    :goto_3
    return v14

    .line 118
    .restart local v11    # "newTag":Lcom/android/gallery3d/exif/ExifTag;
    .restart local v12    # "oldTag":Lcom/android/gallery3d/exif/ExifTag;
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/exif/ExifModifier;->mTagOffsets:Ljava/util/List;

    new-instance v15, Lcom/android/gallery3d/exif/ExifModifier$TagOffset;

    invoke-virtual {v12}, Lcom/android/gallery3d/exif/ExifTag;->getOffset()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v15, v11, v0}, Lcom/android/gallery3d/exif/ExifModifier$TagOffset;-><init>(Lcom/android/gallery3d/exif/ExifTag;I)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {v12}, Lcom/android/gallery3d/exif/ExifTag;->getTagId()S

    move-result v14

    invoke-virtual {v2, v14}, Lcom/android/gallery3d/exif/IfdData;->removeTag(S)V

    .line 120
    invoke-virtual {v2}, Lcom/android/gallery3d/exif/IfdData;->getTagCount()I

    move-result v14

    if-nez v14, :cond_5

    .line 121
    invoke-virtual {v13}, Lcom/android/gallery3d/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V

    goto :goto_1

    .line 129
    .end local v11    # "newTag":Lcom/android/gallery3d/exif/ExifTag;
    .end local v12    # "oldTag":Lcom/android/gallery3d/exif/ExifTag;
    :cond_8
    move-object v1, v7

    .local v1, "arr$":[Lcom/android/gallery3d/exif/IfdData;
    array-length v10, v1

    .local v10, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_4
    if-ge v5, v10, :cond_a

    aget-object v6, v1, v5

    .line 130
    .local v6, "ifd":Lcom/android/gallery3d/exif/IfdData;
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/android/gallery3d/exif/IfdData;->getTagCount()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v14

    if-lez v14, :cond_9

    .line 131
    const/4 v14, 0x0

    .line 136
    invoke-static {v9}, Lcom/android/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    .line 129
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 134
    .end local v6    # "ifd":Lcom/android/gallery3d/exif/IfdData;
    :cond_a
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/exif/ExifModifier;->modify()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 136
    invoke-static {v9}, Lcom/android/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 138
    const/4 v14, 0x1

    goto :goto_3

    .line 136
    .end local v1    # "arr$":[Lcom/android/gallery3d/exif/IfdData;
    .end local v2    # "currIfd":Lcom/android/gallery3d/exif/IfdData;
    .end local v3    # "event":I
    .end local v4    # "flag":I
    .end local v5    # "i$":I
    .end local v7    # "ifdDatas":[Lcom/android/gallery3d/exif/IfdData;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "len$":I
    .end local v13    # "parser":Lcom/android/gallery3d/exif/ExifParser;
    .restart local v8    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v14

    goto :goto_2

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifModifier;->mTagToModified:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public modifyTag(Lcom/android/gallery3d/exif/ExifTag;)V
    .locals 1
    .param p1, "tag"    # Lcom/android/gallery3d/exif/ExifTag;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifModifier;->mTagToModified:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/exif/ExifData;->addTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 195
    return-void
.end method
