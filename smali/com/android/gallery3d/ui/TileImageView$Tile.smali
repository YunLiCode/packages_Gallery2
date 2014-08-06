.class Lcom/android/gallery3d/ui/TileImageView$Tile;
.super Lcom/android/gallery3d/glrenderer/UploadedTexture;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Tile"
.end annotation


# instance fields
.field public mDecodedTile:Landroid/graphics/Bitmap;

.field public mNext:Lcom/android/gallery3d/ui/TileImageView$Tile;

.field public mTileLevel:I

.field public volatile mTileState:I

.field public mX:I

.field public mY:I

.field final synthetic this$0:Lcom/android/gallery3d/ui/TileImageView;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/TileImageView;III)V
    .locals 1
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "level"    # I

    .prologue
    .line 661
    iput-object p1, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;-><init>()V

    .line 659
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 662
    iput p2, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mX:I

    .line 663
    iput p3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mY:I

    .line 664
    iput p4, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    .line 665
    return-void
.end method


# virtual methods
.method decode()Z
    .locals 6

    .prologue
    .line 676
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    # getter for: Lcom/android/gallery3d/ui/TileImageView;->mModel:Lcom/android/gallery3d/ui/TileImageView$TileSource;
    invoke-static {v1}, Lcom/android/gallery3d/ui/TileImageView;->access$500(Lcom/android/gallery3d/ui/TileImageView;)Lcom/android/gallery3d/ui/TileImageView$TileSource;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    iget v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mX:I

    iget v4, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mY:I

    # getter for: Lcom/android/gallery3d/ui/TileImageView;->sTileSize:I
    invoke-static {}, Lcom/android/gallery3d/ui/TileImageView;->access$400()I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/gallery3d/ui/TileImageView$TileSource;->getTile(IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "TileImageView"

    const-string v2, "fail to decode tile"

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 681
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getParentTile()Lcom/android/gallery3d/ui/TileImageView$Tile;
    .locals 5

    .prologue
    .line 722
    iget v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    iget v4, v4, Lcom/android/gallery3d/ui/TileImageView;->mLevelCount:I

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    .line 726
    :goto_0
    return-object v3

    .line 723
    :cond_0
    # getter for: Lcom/android/gallery3d/ui/TileImageView;->sTileSize:I
    invoke-static {}, Lcom/android/gallery3d/ui/TileImageView;->access$400()I

    move-result v3

    iget v4, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    add-int/lit8 v4, v4, 0x1

    shl-int v0, v3, v4

    .line 724
    .local v0, "size":I
    iget v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mX:I

    div-int/2addr v3, v0

    mul-int v1, v0, v3

    .line 725
    .local v1, "x":I
    iget v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mY:I

    div-int/2addr v3, v0

    mul-int v2, v0, v3

    .line 726
    .local v2, "y":I
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    iget v4, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    add-int/lit8 v4, v4, 0x1

    # invokes: Lcom/android/gallery3d/ui/TileImageView;->getTile(III)Lcom/android/gallery3d/ui/TileImageView$Tile;
    invoke-static {v3, v1, v2, v4}, Lcom/android/gallery3d/ui/TileImageView;->access$600(Lcom/android/gallery3d/ui/TileImageView;III)Lcom/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v3

    goto :goto_0
.end method

.method public getTextureHeight()I
    .locals 1

    .prologue
    .line 711
    # getter for: Lcom/android/gallery3d/ui/TileImageView;->sTileSize:I
    invoke-static {}, Lcom/android/gallery3d/ui/TileImageView;->access$400()I

    move-result v0

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    .prologue
    .line 706
    # getter for: Lcom/android/gallery3d/ui/TileImageView;->sTileSize:I
    invoke-static {}, Lcom/android/gallery3d/ui/TileImageView;->access$400()I

    move-result v0

    return v0
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 669
    invoke-static {}, Lcom/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/android/photos/data/GalleryBitmapPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 670
    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 686
    iget v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/16 v5, 0x8

    if-ne v3, v5, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 690
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    iget v3, v3, Lcom/android/gallery3d/ui/TileImageView;->mImageWidth:I

    iget v5, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mX:I

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    shr-int v2, v3, v5

    .line 691
    .local v2, "rightEdge":I
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    iget v3, v3, Lcom/android/gallery3d/ui/TileImageView;->mImageHeight:I

    iget v5, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mY:I

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    shr-int v1, v3, v5

    .line 692
    .local v1, "bottomEdge":I
    # getter for: Lcom/android/gallery3d/ui/TileImageView;->sTileSize:I
    invoke-static {}, Lcom/android/gallery3d/ui/TileImageView;->access$400()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    # getter for: Lcom/android/gallery3d/ui/TileImageView;->sTileSize:I
    invoke-static {}, Lcom/android/gallery3d/ui/TileImageView;->access$400()I

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/android/gallery3d/ui/TileImageView$Tile;->setSize(II)V

    .line 694
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 695
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 696
    iput v4, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 697
    return-object v0

    .line 686
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bottomEdge":I
    .end local v2    # "rightEdge":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 731
    const-string v0, "tile(%s, %s, %s / %s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mX:I

    # getter for: Lcom/android/gallery3d/ui/TileImageView;->sTileSize:I
    invoke-static {}, Lcom/android/gallery3d/ui/TileImageView;->access$400()I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mY:I

    # getter for: Lcom/android/gallery3d/ui/TileImageView;->sTileSize:I
    invoke-static {}, Lcom/android/gallery3d/ui/TileImageView;->access$400()I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    # getter for: Lcom/android/gallery3d/ui/TileImageView;->mLevel:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/TileImageView;->access$700(Lcom/android/gallery3d/ui/TileImageView;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    iget v3, v3, Lcom/android/gallery3d/ui/TileImageView;->mLevelCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(III)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "level"    # I

    .prologue
    .line 715
    iput p1, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mX:I

    .line 716
    iput p2, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mY:I

    .line 717
    iput p3, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    .line 718
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TileImageView$Tile;->invalidateContent()V

    .line 719
    return-void
.end method
