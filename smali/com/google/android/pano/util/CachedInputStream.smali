.class public Lcom/google/android/pano/util/CachedInputStream;
.super Ljava/io/FilterInputStream;
.source "CachedInputStream.java"


# instance fields
.field private mBufs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mCount:I

.field private mMarkLimit:I

.field private mMarkPos:I

.field private mOverrideMarkLimit:I

.field private mPos:I

.field private tmp:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/util/CachedInputStream;->mBufs:Ljava/util/ArrayList;

    .line 20
    iput v1, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    .line 21
    iput v1, p0, Lcom/google/android/pano/util/CachedInputStream;->mCount:I

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/pano/util/CachedInputStream;->mMarkPos:I

    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/pano/util/CachedInputStream;->tmp:[B

    .line 29
    return-void
.end method

.method private copyMarkedBuffer([BII)I
    .locals 9
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "read"    # I

    .prologue
    .line 155
    const/4 v6, 0x0

    .line 156
    .local v6, "totalRead":I
    :goto_0
    if-lez p3, :cond_2

    iget v7, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    iget v8, p0, Lcom/google/android/pano/util/CachedInputStream;->mCount:I

    if-ge v7, v8, :cond_2

    .line 157
    iget v7, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    div-int/lit16 v1, v7, 0x4000

    .line 158
    .local v1, "currentBuf":I
    iget v7, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    mul-int/lit16 v8, v1, 0x4000

    sub-int v3, v7, v8

    .line 159
    .local v3, "indexInBuf":I
    iget-object v7, p0, Lcom/google/android/pano/util/CachedInputStream;->mBufs:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 160
    .local v0, "buf":[B
    add-int/lit8 v7, v1, 0x1

    mul-int/lit16 v2, v7, 0x4000

    .line 161
    .local v2, "end":I
    iget v7, p0, Lcom/google/android/pano/util/CachedInputStream;->mCount:I

    if-le v2, v7, :cond_0

    .line 162
    iget v2, p0, Lcom/google/android/pano/util/CachedInputStream;->mCount:I

    .line 164
    :cond_0
    iget v7, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    sub-int v4, v2, v7

    .line 165
    .local v4, "leftInBuffer":I
    if-le p3, v4, :cond_1

    move v5, v4

    .line 166
    .local v5, "toRead":I
    :goto_1
    invoke-static {v0, v3, p1, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    add-int/2addr p2, v5

    .line 168
    sub-int/2addr p3, v5

    .line 169
    add-int/2addr v6, v5

    .line 170
    iget v7, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    add-int/2addr v7, v5

    iput v7, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    goto :goto_0

    .end local v5    # "toRead":I
    :cond_1
    move v5, p3

    .line 165
    goto :goto_1

    .line 172
    .end local v0    # "buf":[B
    .end local v1    # "currentBuf":I
    .end local v2    # "end":I
    .end local v3    # "indexInBuf":I
    .end local v4    # "leftInBuffer":I
    :cond_2
    return v6
.end method

.method private invalidate()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 93
    iget v1, p0, Lcom/google/android/pano/util/CachedInputStream;->mCount:I

    iget v2, p0, Lcom/google/android/pano/util/CachedInputStream;->mMarkPos:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/pano/util/CachedInputStream;->mMarkLimit:I

    if-le v1, v2, :cond_0

    .line 94
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/pano/util/CachedInputStream;->mMarkPos:I

    .line 95
    iput v0, p0, Lcom/google/android/pano/util/CachedInputStream;->mCount:I

    .line 96
    iput v0, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    .line 97
    iget-object v0, p0, Lcom/google/android/pano/util/CachedInputStream;->mBufs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 98
    const/4 v0, 0x1

    .line 100
    :cond_0
    return v0
.end method

.method private static streamClosed()Ljava/io/IOException;
    .locals 2

    .prologue
    .line 228
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/pano/util/CachedInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 178
    invoke-static {}, Lcom/google/android/pano/util/CachedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 180
    :cond_0
    iget v0, p0, Lcom/google/android/pano/util/CachedInputStream;->mCount:I

    iget v1, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/pano/util/CachedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/pano/util/CachedInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/android/pano/util/CachedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/pano/util/CachedInputStream;->in:Ljava/io/InputStream;

    .line 90
    :cond_0
    return-void
.end method

.method public mark(I)V
    .locals 4
    .param p1, "readlimit"    # I

    .prologue
    .line 49
    iget v2, p0, Lcom/google/android/pano/util/CachedInputStream;->mOverrideMarkLimit:I

    if-ge p1, v2, :cond_0

    iget p1, p0, Lcom/google/android/pano/util/CachedInputStream;->mOverrideMarkLimit:I

    .line 50
    :cond_0
    iget v2, p0, Lcom/google/android/pano/util/CachedInputStream;->mMarkPos:I

    if-ltz v2, :cond_1

    .line 53
    iget v2, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    div-int/lit16 v0, v2, 0x4000

    .line 54
    .local v0, "chunks":I
    if-lez v0, :cond_1

    .line 56
    mul-int/lit16 v1, v0, 0x4000

    .line 57
    .local v1, "removedBytes":I
    iget-object v2, p0, Lcom/google/android/pano/util/CachedInputStream;->mBufs:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 58
    iget v2, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    .line 59
    iget v2, p0, Lcom/google/android/pano/util/CachedInputStream;->mCount:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/pano/util/CachedInputStream;->mCount:I

    .line 62
    .end local v0    # "chunks":I
    .end local v1    # "removedBytes":I
    :cond_1
    iget v2, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    iput v2, p0, Lcom/google/android/pano/util/CachedInputStream;->mMarkPos:I

    .line 63
    iput p1, p0, Lcom/google/android/pano/util/CachedInputStream;->mMarkLimit:I

    .line 64
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 77
    iget-object v1, p0, Lcom/google/android/pano/util/CachedInputStream;->tmp:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lcom/google/android/pano/util/CachedInputStream;->read([BII)I

    move-result v0

    .line 78
    .local v0, "r":I
    if-gtz v0, :cond_0

    .line 79
    const/4 v1, -0x1

    .line 81
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/pano/util/CachedInputStream;->tmp:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 12
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 105
    iget-object v10, p0, Lcom/google/android/pano/util/CachedInputStream;->in:Ljava/io/InputStream;

    if-nez v10, :cond_0

    .line 106
    invoke-static {}, Lcom/google/android/pano/util/CachedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v9

    throw v9

    .line 108
    :cond_0
    iget v10, p0, Lcom/google/android/pano/util/CachedInputStream;->mMarkPos:I

    if-ne v10, v9, :cond_1

    .line 109
    iget-object v9, p0, Lcom/google/android/pano/util/CachedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v9, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 151
    :goto_0
    return v6

    .line 112
    :cond_1
    if-nez p3, :cond_2

    .line 113
    const/4 v6, 0x0

    goto :goto_0

    .line 115
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/pano/util/CachedInputStream;->copyMarkedBuffer([BII)I

    move-result v1

    .line 116
    .local v1, "copied":I
    sub-int/2addr p3, v1

    .line 117
    add-int/2addr p2, v1

    .line 118
    move v8, v1

    .line 119
    .local v8, "totalReads":I
    :cond_3
    if-lez p3, :cond_5

    .line 120
    iget v10, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    iget-object v11, p0, Lcom/google/android/pano/util/CachedInputStream;->mBufs:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    mul-int/lit16 v11, v11, 0x4000

    if-ne v10, v11, :cond_4

    .line 121
    iget-object v10, p0, Lcom/google/android/pano/util/CachedInputStream;->mBufs:Ljava/util/ArrayList;

    const/16 v11, 0x4000

    new-array v11, v11, [B

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_4
    iget v10, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    div-int/lit16 v2, v10, 0x4000

    .line 124
    .local v2, "currentBuf":I
    iget v10, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    mul-int/lit16 v11, v2, 0x4000

    sub-int v4, v10, v11

    .line 125
    .local v4, "indexInBuf":I
    iget-object v10, p0, Lcom/google/android/pano/util/CachedInputStream;->mBufs:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 126
    .local v0, "buf":[B
    add-int/lit8 v10, v2, 0x1

    mul-int/lit16 v3, v10, 0x4000

    .line 127
    .local v3, "end":I
    iget v10, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    sub-int v5, v3, v10

    .line 128
    .local v5, "leftInBuffer":I
    if-le p3, v5, :cond_6

    move v7, v5

    .line 129
    .local v7, "toRead":I
    :goto_1
    iget-object v10, p0, Lcom/google/android/pano/util/CachedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v10, v0, v4, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 130
    .local v6, "reads":I
    if-lez v6, :cond_5

    .line 131
    invoke-static {v0, v4, p1, p2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    iget v10, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    add-int/2addr v10, v6

    iput v10, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    .line 133
    iget v10, p0, Lcom/google/android/pano/util/CachedInputStream;->mCount:I

    add-int/2addr v10, v6

    iput v10, p0, Lcom/google/android/pano/util/CachedInputStream;->mCount:I

    .line 134
    add-int/2addr v8, v6

    .line 135
    add-int/2addr p2, v6

    .line 136
    sub-int/2addr p3, v6

    .line 137
    invoke-direct {p0}, Lcom/google/android/pano/util/CachedInputStream;->invalidate()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 138
    iget-object v10, p0, Lcom/google/android/pano/util/CachedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v10, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 139
    if-lez v6, :cond_5

    .line 140
    add-int/2addr v8, v6

    .line 148
    .end local v0    # "buf":[B
    .end local v2    # "currentBuf":I
    .end local v3    # "end":I
    .end local v4    # "indexInBuf":I
    .end local v5    # "leftInBuffer":I
    .end local v6    # "reads":I
    .end local v7    # "toRead":I
    :cond_5
    if-nez v8, :cond_7

    move v6, v9

    .line 149
    goto :goto_0

    .restart local v0    # "buf":[B
    .restart local v2    # "currentBuf":I
    .restart local v3    # "end":I
    .restart local v4    # "indexInBuf":I
    .restart local v5    # "leftInBuffer":I
    :cond_6
    move v7, p3

    .line 128
    goto :goto_1

    .end local v0    # "buf":[B
    .end local v2    # "currentBuf":I
    .end local v3    # "end":I
    .end local v4    # "indexInBuf":I
    .end local v5    # "leftInBuffer":I
    :cond_7
    move v6, v8

    .line 151
    goto :goto_0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget v0, p0, Lcom/google/android/pano/util/CachedInputStream;->mMarkPos:I

    if-gez v0, :cond_0

    .line 69
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark has been invalidated"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iget v0, p0, Lcom/google/android/pano/util/CachedInputStream;->mMarkPos:I

    iput v0, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    .line 72
    return-void
.end method

.method public setOverrideMarkLimit(I)V
    .locals 0
    .param p1, "overrideMarkLimit"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/google/android/pano/util/CachedInputStream;->mOverrideMarkLimit:I

    .line 41
    return-void
.end method

.method public skip(J)J
    .locals 13
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v11, 0x0

    .line 185
    iget-object v9, p0, Lcom/google/android/pano/util/CachedInputStream;->in:Ljava/io/InputStream;

    if-nez v9, :cond_0

    .line 186
    invoke-static {}, Lcom/google/android/pano/util/CachedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v9

    throw v9

    .line 188
    :cond_0
    iget v9, p0, Lcom/google/android/pano/util/CachedInputStream;->mMarkPos:I

    if-gez v9, :cond_2

    .line 189
    iget-object v9, p0, Lcom/google/android/pano/util/CachedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v9, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v7

    .line 224
    :cond_1
    :goto_0
    return-wide v7

    .line 191
    :cond_2
    const-wide/16 v7, 0x0

    .line 192
    .local v7, "totalSkip":J
    iget v9, p0, Lcom/google/android/pano/util/CachedInputStream;->mCount:I

    iget v10, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    sub-int/2addr v9, v10

    int-to-long v7, v9

    .line 193
    cmp-long v9, v7, p1

    if-lez v9, :cond_3

    .line 194
    move-wide v7, p1

    .line 196
    :cond_3
    iget v9, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    int-to-long v9, v9

    add-long/2addr v9, v7

    long-to-int v9, v9

    iput v9, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    .line 197
    sub-long/2addr p1, v7

    .line 198
    :cond_4
    cmp-long v9, p1, v11

    if-lez v9, :cond_1

    .line 199
    iget v9, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    iget-object v10, p0, Lcom/google/android/pano/util/CachedInputStream;->mBufs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    mul-int/lit16 v10, v10, 0x4000

    if-ne v9, v10, :cond_5

    .line 200
    iget-object v9, p0, Lcom/google/android/pano/util/CachedInputStream;->mBufs:Ljava/util/ArrayList;

    const/16 v10, 0x4000

    new-array v10, v10, [B

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_5
    iget v9, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    div-int/lit16 v1, v9, 0x4000

    .line 203
    .local v1, "currentBuf":I
    iget v9, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    mul-int/lit16 v10, v1, 0x4000

    sub-int v3, v9, v10

    .line 204
    .local v3, "indexInBuf":I
    iget-object v9, p0, Lcom/google/android/pano/util/CachedInputStream;->mBufs:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 205
    .local v0, "buf":[B
    add-int/lit8 v9, v1, 0x1

    mul-int/lit16 v2, v9, 0x4000

    .line 206
    .local v2, "end":I
    iget v9, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    sub-int v4, v2, v9

    .line 207
    .local v4, "leftInBuffer":I
    int-to-long v9, v4

    cmp-long v9, p1, v9

    if-lez v9, :cond_6

    int-to-long v9, v4

    :goto_1
    long-to-int v6, v9

    .line 208
    .local v6, "toRead":I
    iget-object v9, p0, Lcom/google/android/pano/util/CachedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v9, v0, v3, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 209
    .local v5, "reads":I
    if-lez v5, :cond_1

    .line 210
    iget v9, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    add-int/2addr v9, v5

    iput v9, p0, Lcom/google/android/pano/util/CachedInputStream;->mPos:I

    .line 211
    iget v9, p0, Lcom/google/android/pano/util/CachedInputStream;->mCount:I

    add-int/2addr v9, v5

    iput v9, p0, Lcom/google/android/pano/util/CachedInputStream;->mCount:I

    .line 212
    int-to-long v9, v5

    sub-long/2addr p1, v9

    .line 213
    int-to-long v9, v5

    add-long/2addr v7, v9

    .line 214
    invoke-direct {p0}, Lcom/google/android/pano/util/CachedInputStream;->invalidate()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 215
    cmp-long v9, p1, v11

    if-lez v9, :cond_1

    .line 216
    iget-object v9, p0, Lcom/google/android/pano/util/CachedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v9, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v9

    add-long/2addr v7, v9

    goto :goto_0

    .end local v5    # "reads":I
    .end local v6    # "toRead":I
    :cond_6
    move-wide v9, p1

    .line 207
    goto :goto_1
.end method
