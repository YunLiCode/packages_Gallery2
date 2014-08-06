.class public Lcom/google/android/pano/data/Cluster;
.super Ljava/lang/Object;
.source "Cluster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/data/Cluster$Builder;,
        Lcom/google/android/pano/data/Cluster$ClusterItem;
    }
.end annotation


# instance fields
.field private mBrowseItemsStartIndex:I

.field private mBrowseItemsUri:Landroid/net/Uri;

.field private mCacheTimeMs:J

.field private mClusterItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/pano/data/Cluster$ClusterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayDescription:Ljava/lang/CharSequence;

.field private mDisplayName:Ljava/lang/CharSequence;

.field private mId:J

.field private mImageCropAllowed:Z

.field private mImportance:I

.field private mIntent:Landroid/content/Intent;

.field private mName:Ljava/lang/String;

.field private mNotificationText:Ljava/lang/String;

.field private mNotificationUri:Landroid/net/Uri;

.field private mVisibleCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/data/Cluster;->mClusterItems:Ljava/util/List;

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/pano/data/Cluster;->mImageCropAllowed:Z

    .line 133
    return-void
.end method

.method static synthetic access$1002(Lcom/google/android/pano/data/Cluster;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/data/Cluster;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/google/android/pano/data/Cluster;->mImageCropAllowed:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/google/android/pano/data/Cluster;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/data/Cluster;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/google/android/pano/data/Cluster;->mIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/android/pano/data/Cluster;J)J
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/data/Cluster;
    .param p1, "x1"    # J

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/google/android/pano/data/Cluster;->mCacheTimeMs:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/google/android/pano/data/Cluster;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/data/Cluster;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/pano/data/Cluster;->mClusterItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/android/pano/data/Cluster;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/data/Cluster;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/google/android/pano/data/Cluster;->mBrowseItemsUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/android/pano/data/Cluster;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/data/Cluster;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/google/android/pano/data/Cluster;->mNotificationUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$302(Lcom/google/android/pano/data/Cluster;J)J
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/data/Cluster;
    .param p1, "x1"    # J

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/google/android/pano/data/Cluster;->mId:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/google/android/pano/data/Cluster;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/data/Cluster;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/google/android/pano/data/Cluster;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/android/pano/data/Cluster;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/data/Cluster;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/google/android/pano/data/Cluster;->mDisplayName:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/android/pano/data/Cluster;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/data/Cluster;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/google/android/pano/data/Cluster;->mDisplayDescription:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/android/pano/data/Cluster;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/data/Cluster;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/google/android/pano/data/Cluster;->mNotificationText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/android/pano/data/Cluster;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/data/Cluster;
    .param p1, "x1"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/google/android/pano/data/Cluster;->mImportance:I

    return p1
.end method

.method static synthetic access$902(Lcom/google/android/pano/data/Cluster;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/data/Cluster;
    .param p1, "x1"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/google/android/pano/data/Cluster;->mVisibleCount:I

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 248
    if-ne p0, p1, :cond_1

    .line 310
    :cond_0
    :goto_0
    return v1

    .line 250
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 251
    goto :goto_0

    .line 252
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 253
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 254
    check-cast v0, Lcom/google/android/pano/data/Cluster;

    .line 255
    .local v0, "other":Lcom/google/android/pano/data/Cluster;
    iget-wide v3, p0, Lcom/google/android/pano/data/Cluster;->mCacheTimeMs:J

    iget-wide v5, v0, Lcom/google/android/pano/data/Cluster;->mCacheTimeMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 256
    goto :goto_0

    .line 257
    :cond_4
    iget-object v3, p0, Lcom/google/android/pano/data/Cluster;->mClusterItems:Ljava/util/List;

    if-nez v3, :cond_5

    .line 258
    iget-object v3, v0, Lcom/google/android/pano/data/Cluster;->mClusterItems:Ljava/util/List;

    if-eqz v3, :cond_6

    move v1, v2

    .line 259
    goto :goto_0

    .line 260
    :cond_5
    iget-object v3, p0, Lcom/google/android/pano/data/Cluster;->mClusterItems:Ljava/util/List;

    iget-object v4, v0, Lcom/google/android/pano/data/Cluster;->mClusterItems:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 261
    goto :goto_0

    .line 262
    :cond_6
    iget-object v3, p0, Lcom/google/android/pano/data/Cluster;->mDisplayName:Ljava/lang/CharSequence;

    if-nez v3, :cond_7

    .line 263
    iget-object v3, v0, Lcom/google/android/pano/data/Cluster;->mDisplayName:Ljava/lang/CharSequence;

    if-eqz v3, :cond_8

    move v1, v2

    .line 264
    goto :goto_0

    .line 265
    :cond_7
    iget-object v3, p0, Lcom/google/android/pano/data/Cluster;->mDisplayName:Ljava/lang/CharSequence;

    iget-object v4, v0, Lcom/google/android/pano/data/Cluster;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 266
    goto :goto_0

    .line 267
    :cond_8
    iget-object v3, p0, Lcom/google/android/pano/data/Cluster;->mDisplayDescription:Ljava/lang/CharSequence;

    if-nez v3, :cond_9

    .line 268
    iget-object v3, v0, Lcom/google/android/pano/data/Cluster;->mDisplayDescription:Ljava/lang/CharSequence;

    if-eqz v3, :cond_a

    move v1, v2

    .line 269
    goto :goto_0

    .line 270
    :cond_9
    iget-object v3, p0, Lcom/google/android/pano/data/Cluster;->mDisplayDescription:Ljava/lang/CharSequence;

    iget-object v4, v0, Lcom/google/android/pano/data/Cluster;->mDisplayDescription:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    .line 271
    goto :goto_0

    .line 272
    :cond_a
    iget-object v3, p0, Lcom/google/android/pano/data/Cluster;->mNotificationText:Ljava/lang/String;

    if-nez v3, :cond_b

    .line 273
    iget-object v3, v0, Lcom/google/android/pano/data/Cluster;->mNotificationText:Ljava/lang/String;

    if-eqz v3, :cond_c

    move v1, v2

    .line 274
    goto :goto_0

    .line 275
    :cond_b
    iget-object v3, p0, Lcom/google/android/pano/data/Cluster;->mNotificationText:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/pano/data/Cluster;->mNotificationText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    move v1, v2

    .line 276
    goto :goto_0

    .line 277
    :cond_c
    iget-wide v3, p0, Lcom/google/android/pano/data/Cluster;->mId:J

    iget-wide v5, v0, Lcom/google/android/pano/data/Cluster;->mId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_d

    move v1, v2

    .line 278
    goto :goto_0

    .line 279
    :cond_d
    iget-boolean v3, p0, Lcom/google/android/pano/data/Cluster;->mImageCropAllowed:Z

    iget-boolean v4, v0, Lcom/google/android/pano/data/Cluster;->mImageCropAllowed:Z

    if-eq v3, v4, :cond_e

    move v1, v2

    .line 280
    goto/16 :goto_0

    .line 281
    :cond_e
    iget v3, p0, Lcom/google/android/pano/data/Cluster;->mImportance:I

    iget v4, v0, Lcom/google/android/pano/data/Cluster;->mImportance:I

    if-eq v3, v4, :cond_f

    move v1, v2

    .line 282
    goto/16 :goto_0

    .line 283
    :cond_f
    iget-object v3, p0, Lcom/google/android/pano/data/Cluster;->mIntent:Landroid/content/Intent;

    if-nez v3, :cond_10

    .line 284
    iget-object v3, v0, Lcom/google/android/pano/data/Cluster;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_11

    move v1, v2

    .line 285
    goto/16 :goto_0

    .line 286
    :cond_10
    iget-object v3, p0, Lcom/google/android/pano/data/Cluster;->mIntent:Landroid/content/Intent;

    iget-object v4, v0, Lcom/google/android/pano/data/Cluster;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_11

    move v1, v2

    .line 287
    goto/16 :goto_0

    .line 288
    :cond_11
    iget-object v3, p0, Lcom/google/android/pano/data/Cluster;->mName:Ljava/lang/String;

    if-nez v3, :cond_12

    .line 289
    iget-object v3, v0, Lcom/google/android/pano/data/Cluster;->mName:Ljava/lang/String;

    if-eqz v3, :cond_13

    move v1, v2

    .line 290
    goto/16 :goto_0

    .line 291
    :cond_12
    iget-object v3, p0, Lcom/google/android/pano/data/Cluster;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/pano/data/Cluster;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    move v1, v2

    .line 292
    goto/16 :goto_0

    .line 293
    :cond_13
    iget v3, p0, Lcom/google/android/pano/data/Cluster;->mVisibleCount:I

    iget v4, v0, Lcom/google/android/pano/data/Cluster;->mVisibleCount:I

    if-eq v3, v4, :cond_14

    move v1, v2

    .line 294
    goto/16 :goto_0

    .line 295
    :cond_14
    iget-object v3, p0, Lcom/google/android/pano/data/Cluster;->mBrowseItemsUri:Landroid/net/Uri;

    if-nez v3, :cond_15

    .line 296
    iget-object v3, v0, Lcom/google/android/pano/data/Cluster;->mBrowseItemsUri:Landroid/net/Uri;

    if-eqz v3, :cond_16

    move v1, v2

    .line 297
    goto/16 :goto_0

    .line 298
    :cond_15
    iget-object v3, p0, Lcom/google/android/pano/data/Cluster;->mBrowseItemsUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/google/android/pano/data/Cluster;->mBrowseItemsUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    move v1, v2

    .line 299
    goto/16 :goto_0

    .line 301
    :cond_16
    iget v3, p0, Lcom/google/android/pano/data/Cluster;->mBrowseItemsStartIndex:I

    iget v4, v0, Lcom/google/android/pano/data/Cluster;->mBrowseItemsStartIndex:I

    if-eq v3, v4, :cond_17

    move v1, v2

    .line 302
    goto/16 :goto_0

    .line 304
    :cond_17
    iget-object v3, p0, Lcom/google/android/pano/data/Cluster;->mNotificationUri:Landroid/net/Uri;

    if-nez v3, :cond_18

    .line 305
    iget-object v3, v0, Lcom/google/android/pano/data/Cluster;->mNotificationUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    move v1, v2

    .line 306
    goto/16 :goto_0

    .line 307
    :cond_18
    iget-object v3, p0, Lcom/google/android/pano/data/Cluster;->mNotificationUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/google/android/pano/data/Cluster;->mNotificationUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 308
    goto/16 :goto_0
.end method

.method public getBrowseItemsUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/pano/data/Cluster;->mBrowseItemsUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getCacheTimeMs()J
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Lcom/google/android/pano/data/Cluster;->mCacheTimeMs:J

    return-wide v0
.end method

.method public getDisplayDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/pano/data/Cluster;->mDisplayDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/pano/data/Cluster;->mDisplayName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/google/android/pano/data/Cluster;->mId:J

    return-wide v0
.end method

.method public getImportance()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/google/android/pano/data/Cluster;->mImportance:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/pano/data/Cluster;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItem(I)Lcom/google/android/pano/data/Cluster$ClusterItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 198
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/pano/data/Cluster;->mClusterItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/google/android/pano/data/Cluster;->mClusterItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/data/Cluster$ClusterItem;

    .line 201
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/pano/data/Cluster;->mClusterItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/pano/data/Cluster;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibleCount()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/google/android/pano/data/Cluster;->mVisibleCount:I

    return v0
.end method

.method public hashCode()I
    .locals 11

    .prologue
    const/16 v10, 0x20

    const/4 v5, 0x0

    .line 218
    const/16 v2, 0x1f

    .line 219
    .local v2, "prime":I
    const/4 v3, 0x1

    .line 220
    .local v3, "result":I
    iget-wide v6, p0, Lcom/google/android/pano/data/Cluster;->mCacheTimeMs:J

    iget-wide v8, p0, Lcom/google/android/pano/data/Cluster;->mCacheTimeMs:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v4, v6

    add-int/lit8 v3, v4, 0x1f

    .line 221
    iget-object v4, p0, Lcom/google/android/pano/data/Cluster;->mClusterItems:Ljava/util/List;

    if-nez v4, :cond_1

    .line 222
    mul-int/lit8 v3, v3, 0x1f

    .line 228
    :cond_0
    mul-int/lit8 v6, v3, 0x1f

    iget-object v4, p0, Lcom/google/android/pano/data/Cluster;->mDisplayName:Ljava/lang/CharSequence;

    if-nez v4, :cond_2

    move v4, v5

    :goto_0
    add-int v3, v6, v4

    .line 229
    mul-int/lit8 v6, v3, 0x1f

    iget-object v4, p0, Lcom/google/android/pano/data/Cluster;->mDisplayDescription:Ljava/lang/CharSequence;

    if-nez v4, :cond_3

    move v4, v5

    :goto_1
    add-int v3, v6, v4

    .line 231
    mul-int/lit8 v6, v3, 0x1f

    iget-object v4, p0, Lcom/google/android/pano/data/Cluster;->mNotificationText:Ljava/lang/String;

    if-nez v4, :cond_4

    move v4, v5

    :goto_2
    add-int v3, v6, v4

    .line 233
    mul-int/lit8 v4, v3, 0x1f

    iget-wide v6, p0, Lcom/google/android/pano/data/Cluster;->mId:J

    iget-wide v8, p0, Lcom/google/android/pano/data/Cluster;->mId:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    add-int v3, v4, v6

    .line 234
    mul-int/lit8 v6, v3, 0x1f

    iget-boolean v4, p0, Lcom/google/android/pano/data/Cluster;->mImageCropAllowed:Z

    if-eqz v4, :cond_5

    const/16 v4, 0x4cf

    :goto_3
    add-int v3, v6, v4

    .line 235
    mul-int/lit8 v4, v3, 0x1f

    iget v6, p0, Lcom/google/android/pano/data/Cluster;->mImportance:I

    add-int v3, v4, v6

    .line 236
    mul-int/lit8 v6, v3, 0x1f

    iget-object v4, p0, Lcom/google/android/pano/data/Cluster;->mIntent:Landroid/content/Intent;

    if-nez v4, :cond_6

    move v4, v5

    :goto_4
    add-int v3, v6, v4

    .line 237
    mul-int/lit8 v6, v3, 0x1f

    iget-object v4, p0, Lcom/google/android/pano/data/Cluster;->mName:Ljava/lang/String;

    if-nez v4, :cond_7

    move v4, v5

    :goto_5
    add-int v3, v6, v4

    .line 238
    mul-int/lit8 v4, v3, 0x1f

    iget v6, p0, Lcom/google/android/pano/data/Cluster;->mVisibleCount:I

    add-int v3, v4, v6

    .line 239
    mul-int/lit8 v6, v3, 0x1f

    iget-object v4, p0, Lcom/google/android/pano/data/Cluster;->mBrowseItemsUri:Landroid/net/Uri;

    if-nez v4, :cond_8

    move v4, v5

    :goto_6
    add-int v3, v6, v4

    .line 240
    mul-int/lit8 v4, v3, 0x1f

    iget v6, p0, Lcom/google/android/pano/data/Cluster;->mBrowseItemsStartIndex:I

    add-int v3, v4, v6

    .line 241
    mul-int/lit8 v4, v3, 0x1f

    iget-object v6, p0, Lcom/google/android/pano/data/Cluster;->mNotificationUri:Landroid/net/Uri;

    if-nez v6, :cond_9

    :goto_7
    add-int v3, v4, v5

    .line 243
    return v3

    .line 224
    :cond_1
    iget-object v4, p0, Lcom/google/android/pano/data/Cluster;->mClusterItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/data/Cluster$ClusterItem;

    .line 225
    .local v0, "ci":Lcom/google/android/pano/data/Cluster$ClusterItem;
    mul-int/lit8 v4, v3, 0x1f

    invoke-virtual {v0}, Lcom/google/android/pano/data/Cluster$ClusterItem;->hashCode()I

    move-result v6

    add-int v3, v4, v6

    goto :goto_8

    .line 228
    .end local v0    # "ci":Lcom/google/android/pano/data/Cluster$ClusterItem;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v4, p0, Lcom/google/android/pano/data/Cluster;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_0

    .line 229
    :cond_3
    iget-object v4, p0, Lcom/google/android/pano/data/Cluster;->mDisplayDescription:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    .line 231
    :cond_4
    iget-object v4, p0, Lcom/google/android/pano/data/Cluster;->mNotificationText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_2

    .line 234
    :cond_5
    const/16 v4, 0x4d5

    goto :goto_3

    .line 236
    :cond_6
    iget-object v4, p0, Lcom/google/android/pano/data/Cluster;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_4

    .line 237
    :cond_7
    iget-object v4, p0, Lcom/google/android/pano/data/Cluster;->mName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_5

    .line 239
    :cond_8
    iget-object v4, p0, Lcom/google/android/pano/data/Cluster;->mBrowseItemsUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->hashCode()I

    move-result v4

    goto :goto_6

    .line 241
    :cond_9
    iget-object v5, p0, Lcom/google/android/pano/data/Cluster;->mNotificationUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->hashCode()I

    move-result v5

    goto :goto_7
.end method

.method public isImageCropAllowed()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/google/android/pano/data/Cluster;->mImageCropAllowed:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/pano/data/Cluster;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/pano/data/Cluster;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", displayName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/pano/data/Cluster;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", displayDescription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/pano/data/Cluster;->mDisplayDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", notification text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/pano/data/Cluster;->mNotificationText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", importance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/pano/data/Cluster;->mImportance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", visibleCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/pano/data/Cluster;->mVisibleCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", imageCropAllowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/pano/data/Cluster;->mImageCropAllowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cacheTimeMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/pano/data/Cluster;->mCacheTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", clusterItems: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/pano/data/Cluster;->mClusterItems:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/pano/data/Cluster;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/pano/data/Cluster;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", browseItems: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/pano/data/Cluster;->mBrowseItemsUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/pano/data/Cluster;->mBrowseItemsUri:Landroid/net/Uri;

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", browseItemStartIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/pano/data/Cluster;->mBrowseItemsStartIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", notification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/pano/data/Cluster;->mNotificationUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/pano/data/Cluster;->mNotificationUri:Landroid/net/Uri;

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 316
    :cond_0
    const-string v1, ""

    goto :goto_0

    :cond_1
    const-string v1, ""

    goto :goto_1

    :cond_2
    const-string v1, ""

    goto :goto_2
.end method
