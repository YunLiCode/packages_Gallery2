.class public Lcom/android/dreams/phototable/StockSource;
.super Lcom/android/dreams/phototable/PhotoSource;
.source "StockSource.java"


# static fields
.field private static final PHOTOS:[I


# instance fields
.field private final mAlbumCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$AlbumData;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlbumList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$AlbumData;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$ImageData;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$ImageData;",
            ">;"
        }
    .end annotation
.end field

.field private final mStockPhotoName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f02000a

    aput v2, v0, v1

    sput-object v0, Lcom/android/dreams/phototable/StockSource;->PHOTOS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v8, 0x1

    .line 42
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v3}, Lcom/android/dreams/phototable/PhotoSource;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/android/dreams/phototable/PhotoSource;)V

    .line 43
    const-string v3, "PhotoTable.StockSource"

    iput-object v3, p0, Lcom/android/dreams/phototable/PhotoSource;->mSourceName:Ljava/lang/String;

    .line 44
    iget-object v3, p0, Lcom/android/dreams/phototable/PhotoSource;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b002c

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "Default Photos"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dreams/phototable/StockSource;->mStockPhotoName:Ljava/lang/String;

    .line 45
    new-instance v3, Ljava/util/ArrayList;

    sget-object v4, Lcom/android/dreams/phototable/StockSource;->PHOTOS:[I

    array-length v4, v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/dreams/phototable/StockSource;->mImageCache:Ljava/util/ArrayList;

    .line 46
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/dreams/phototable/StockSource;->mAlbumCache:Ljava/util/ArrayList;

    .line 47
    new-instance v3, Ljava/util/ArrayList;

    sget-object v4, Lcom/android/dreams/phototable/StockSource;->PHOTOS:[I

    array-length v4, v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/dreams/phototable/StockSource;->mImageList:Ljava/util/ArrayList;

    .line 48
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/dreams/phototable/StockSource;->mAlbumList:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    invoke-direct {v0, p0}, Lcom/android/dreams/phototable/PhotoSource$AlbumData;-><init>(Lcom/android/dreams/phototable/PhotoSource;)V

    .line 51
    .local v0, "albumData":Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    const-string v3, "com.android.dreams.phototable.StockSource"

    iput-object v3, v0, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->id:Ljava/lang/String;

    .line 52
    iget-object v3, p0, Lcom/android/dreams/phototable/StockSource;->mStockPhotoName:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->account:Ljava/lang/String;

    .line 53
    iget-object v3, p0, Lcom/android/dreams/phototable/StockSource;->mStockPhotoName:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->title:Ljava/lang/String;

    .line 54
    iget-object v3, p0, Lcom/android/dreams/phototable/StockSource;->mAlbumCache:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/android/dreams/phototable/StockSource;->PHOTOS:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 57
    new-instance v2, Lcom/android/dreams/phototable/PhotoSource$ImageData;

    invoke-direct {v2, p0}, Lcom/android/dreams/phototable/PhotoSource$ImageData;-><init>(Lcom/android/dreams/phototable/PhotoSource;)V

    .line 58
    .local v2, "imageData":Lcom/android/dreams/phototable/PhotoSource$ImageData;
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/dreams/phototable/PhotoSource$ImageData;->id:Ljava/lang/String;

    .line 59
    iget-object v3, p0, Lcom/android/dreams/phototable/StockSource;->mImageCache:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .end local v2    # "imageData":Lcom/android/dreams/phototable/PhotoSource$ImageData;
    :cond_0
    invoke-virtual {p0}, Lcom/android/dreams/phototable/StockSource;->fillQueue()V

    .line 63
    return-void
.end method


# virtual methods
.method protected donePaging(Lcom/android/dreams/phototable/PhotoSource$ImageData;)V
    .locals 0
    .param p1, "current"    # Lcom/android/dreams/phototable/PhotoSource$ImageData;

    .prologue
    .line 113
    return-void
.end method

.method public findAlbums()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$AlbumData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/dreams/phototable/StockSource;->mAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/dreams/phototable/StockSource;->mAlbumList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/dreams/phototable/StockSource;->mAlbumCache:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 70
    :cond_0
    const-string v0, "PhotoTable.StockSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "returning a list of albums: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dreams/phototable/StockSource;->mAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/dreams/phototable/StockSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/android/dreams/phototable/StockSource;->mAlbumList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected findImages(I)Ljava/util/Collection;
    .locals 2
    .param p1, "howMany"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$ImageData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/dreams/phototable/StockSource;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/dreams/phototable/StockSource;->mImageList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/dreams/phototable/StockSource;->mImageCache:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/dreams/phototable/StockSource;->mImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getStream(Lcom/android/dreams/phototable/PhotoSource$ImageData;I)Ljava/io/InputStream;
    .locals 6
    .param p1, "data"    # Lcom/android/dreams/phototable/PhotoSource$ImageData;
    .param p2, "longSide"    # I

    .prologue
    .line 84
    const/4 v2, 0x0

    .line 86
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    const-string v3, "PhotoTable.StockSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "opening:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/StockSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v3, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 88
    .local v1, "idx":I
    iget-object v3, p0, Lcom/android/dreams/phototable/PhotoSource;->mResources:Landroid/content/res/Resources;

    sget-object v4, Lcom/android/dreams/phototable/StockSource;->PHOTOS:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 94
    .end local v1    # "idx":I
    :goto_0
    return-object v2

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "PhotoTable.StockSource"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/StockSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public naturalNext(Lcom/android/dreams/phototable/PhotoSource$ImageData;)Lcom/android/dreams/phototable/PhotoSource$ImageData;
    .locals 3
    .param p1, "current"    # Lcom/android/dreams/phototable/PhotoSource$ImageData;

    .prologue
    .line 99
    iget-object v1, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 100
    .local v0, "idx":I
    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lcom/android/dreams/phototable/StockSource;->PHOTOS:[I

    array-length v2, v2

    rem-int v0, v1, v2

    .line 101
    iget-object v1, p0, Lcom/android/dreams/phototable/StockSource;->mImageCache:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dreams/phototable/PhotoSource$ImageData;

    return-object v1
.end method

.method public naturalPrevious(Lcom/android/dreams/phototable/PhotoSource$ImageData;)Lcom/android/dreams/phototable/PhotoSource$ImageData;
    .locals 3
    .param p1, "current"    # Lcom/android/dreams/phototable/PhotoSource$ImageData;

    .prologue
    .line 106
    iget-object v1, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 107
    .local v0, "idx":I
    sget-object v1, Lcom/android/dreams/phototable/StockSource;->PHOTOS:[I

    array-length v1, v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/android/dreams/phototable/StockSource;->PHOTOS:[I

    array-length v2, v2

    rem-int v0, v1, v2

    .line 108
    iget-object v1, p0, Lcom/android/dreams/phototable/StockSource;->mImageCache:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dreams/phototable/PhotoSource$ImageData;

    return-object v1
.end method
