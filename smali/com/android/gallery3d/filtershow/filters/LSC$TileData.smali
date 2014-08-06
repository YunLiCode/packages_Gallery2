.class Lcom/android/gallery3d/filtershow/filters/LSC$TileData;
.super Ljava/lang/Object;
.source "LSC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/filters/LSC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileData"
.end annotation


# instance fields
.field private mHistogram:[I

.field private mTileHeight:I

.field private mTileWidth:I

.field private mXPos:I

.field private mYPos:I

.field final synthetic this$0:Lcom/android/gallery3d/filtershow/filters/LSC;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/filters/LSC;IIII)V
    .locals 1
    .param p2, "xPos"    # I
    .param p3, "yPos"    # I
    .param p4, "tileWidth"    # I
    .param p5, "tileHeight"    # I

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/LSC$TileData;->this$0:Lcom/android/gallery3d/filtershow/filters/LSC;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/LSC$TileData;->mHistogram:[I

    .line 33
    iput p2, p0, Lcom/android/gallery3d/filtershow/filters/LSC$TileData;->mXPos:I

    .line 34
    iput p3, p0, Lcom/android/gallery3d/filtershow/filters/LSC$TileData;->mYPos:I

    .line 35
    iput p4, p0, Lcom/android/gallery3d/filtershow/filters/LSC$TileData;->mTileWidth:I

    .line 36
    iput p5, p0, Lcom/android/gallery3d/filtershow/filters/LSC$TileData;->mTileHeight:I

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/filters/LSC$TileData;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/filters/LSC$TileData;

    .prologue
    .line 25
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/LSC$TileData;->mXPos:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/filtershow/filters/LSC$TileData;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/filters/LSC$TileData;

    .prologue
    .line 25
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/LSC$TileData;->mYPos:I

    return v0
.end method


# virtual methods
.method getHistogram()[I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/LSC$TileData;->mHistogram:[I

    return-object v0
.end method

.method getTileHeight()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/LSC$TileData;->mTileHeight:I

    return v0
.end method

.method getTileWidth()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/LSC$TileData;->mTileWidth:I

    return v0
.end method

.method getXPos()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/LSC$TileData;->mXPos:I

    return v0
.end method

.method getYPos()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/LSC$TileData;->mYPos:I

    return v0
.end method
