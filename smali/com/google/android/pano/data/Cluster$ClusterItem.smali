.class public Lcom/google/android/pano/data/Cluster$ClusterItem;
.super Ljava/lang/Object;
.source "Cluster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/data/Cluster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClusterItem"
.end annotation


# instance fields
.field private mHeight:F

.field private mImageUri:Landroid/net/Uri;

.field private mScaleType:I

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/pano/data/Cluster$ClusterItem;->mScaleType:I

    .line 44
    iput-object p1, p0, Lcom/google/android/pano/data/Cluster$ClusterItem;->mImageUri:Landroid/net/Uri;

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    if-ne p0, p1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v1

    .line 112
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 113
    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 115
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 116
    check-cast v0, Lcom/google/android/pano/data/Cluster$ClusterItem;

    .line 117
    .local v0, "other":Lcom/google/android/pano/data/Cluster$ClusterItem;
    iget v3, p0, Lcom/google/android/pano/data/Cluster$ClusterItem;->mWidth:F

    iget v4, v0, Lcom/google/android/pano/data/Cluster$ClusterItem;->mWidth:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    iget v3, p0, Lcom/google/android/pano/data/Cluster$ClusterItem;->mHeight:F

    iget v4, v0, Lcom/google/android/pano/data/Cluster$ClusterItem;->mHeight:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    iget v3, p0, Lcom/google/android/pano/data/Cluster$ClusterItem;->mScaleType:I

    iget v4, v0, Lcom/google/android/pano/data/Cluster$ClusterItem;->mScaleType:I

    if-eq v3, v4, :cond_5

    :cond_4
    move v1, v2

    .line 119
    goto :goto_0

    .line 121
    :cond_5
    iget-object v3, p0, Lcom/google/android/pano/data/Cluster$ClusterItem;->mImageUri:Landroid/net/Uri;

    if-nez v3, :cond_6

    .line 122
    iget-object v3, v0, Lcom/google/android/pano/data/Cluster$ClusterItem;->mImageUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    move v1, v2

    .line 123
    goto :goto_0

    .line 124
    :cond_6
    iget-object v3, p0, Lcom/google/android/pano/data/Cluster$ClusterItem;->mImageUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/google/android/pano/data/Cluster$ClusterItem;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 125
    goto :goto_0
.end method

.method public getImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/pano/data/Cluster$ClusterItem;->mImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 102
    const/16 v0, 0x1f

    .line 103
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 104
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/android/pano/data/Cluster$ClusterItem;->mImageUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 105
    return v1

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/google/android/pano/data/Cluster$ClusterItem;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "imageUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/pano/data/Cluster$ClusterItem;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
