.class Lcom/android/photos/views/TiledImageRenderer$TileQueue;
.super Ljava/lang/Object;
.source "TiledImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/views/TiledImageRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TileQueue"
.end annotation


# instance fields
.field private mHead:Lcom/android/photos/views/TiledImageRenderer$Tile;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 693
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/photos/views/TiledImageRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/photos/views/TiledImageRenderer$1;

    .prologue
    .line 693
    invoke-direct {p0}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 710
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcom/android/photos/views/TiledImageRenderer$Tile;

    .line 711
    return-void
.end method

.method public pop()Lcom/android/photos/views/TiledImageRenderer$Tile;
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcom/android/photos/views/TiledImageRenderer$Tile;

    .line 698
    .local v0, "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mNext:Lcom/android/photos/views/TiledImageRenderer$Tile;

    iput-object v1, p0, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcom/android/photos/views/TiledImageRenderer$Tile;

    .line 699
    :cond_0
    return-object v0
.end method

.method public push(Lcom/android/photos/views/TiledImageRenderer$Tile;)Z
    .locals 2
    .param p1, "tile"    # Lcom/android/photos/views/TiledImageRenderer$Tile;

    .prologue
    .line 703
    iget-object v1, p0, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcom/android/photos/views/TiledImageRenderer$Tile;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 704
    .local v0, "wasEmpty":Z
    :goto_0
    iget-object v1, p0, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcom/android/photos/views/TiledImageRenderer$Tile;

    iput-object v1, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mNext:Lcom/android/photos/views/TiledImageRenderer$Tile;

    .line 705
    iput-object p1, p0, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcom/android/photos/views/TiledImageRenderer$Tile;

    .line 706
    return v0

    .line 703
    .end local v0    # "wasEmpty":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
