.class Lcom/android/photos/shims/BitmapJobDrawable$ThumbnailLoader;
.super Lcom/android/gallery3d/ui/BitmapLoader;
.source "BitmapJobDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/shims/BitmapJobDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThumbnailLoader"
.end annotation


# static fields
.field private static final sThreadPool:Lcom/android/gallery3d/util/ThreadPool;


# instance fields
.field private mParent:Lcom/android/photos/shims/BitmapJobDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 161
    new-instance v0, Lcom/android/gallery3d/util/ThreadPool;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/util/ThreadPool;-><init>(II)V

    sput-object v0, Lcom/android/photos/shims/BitmapJobDrawable$ThumbnailLoader;->sThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    return-void
.end method

.method public constructor <init>(Lcom/android/photos/shims/BitmapJobDrawable;)V
    .locals 0
    .param p1, "parent"    # Lcom/android/photos/shims/BitmapJobDrawable;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/gallery3d/ui/BitmapLoader;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/android/photos/shims/BitmapJobDrawable$ThumbnailLoader;->mParent:Lcom/android/photos/shims/BitmapJobDrawable;

    .line 166
    return-void
.end method


# virtual methods
.method protected onLoadComplete(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/photos/shims/BitmapJobDrawable$ThumbnailLoader;->mParent:Lcom/android/photos/shims/BitmapJobDrawable;

    iget-object v1, p0, Lcom/android/photos/shims/BitmapJobDrawable$ThumbnailLoader;->mParent:Lcom/android/photos/shims/BitmapJobDrawable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/photos/shims/BitmapJobDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 177
    return-void
.end method

.method protected submitBitmapTask(Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/FutureListener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "l":Lcom/android/gallery3d/util/FutureListener;, "Lcom/android/gallery3d/util/FutureListener<Landroid/graphics/Bitmap;>;"
    sget-object v0, Lcom/android/photos/shims/BitmapJobDrawable$ThumbnailLoader;->sThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    iget-object v1, p0, Lcom/android/photos/shims/BitmapJobDrawable$ThumbnailLoader;->mParent:Lcom/android/photos/shims/BitmapJobDrawable;

    # getter for: Lcom/android/photos/shims/BitmapJobDrawable;->mItem:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v1}, Lcom/android/photos/shims/BitmapJobDrawable;->access$000(Lcom/android/photos/shims/BitmapJobDrawable;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    return-object v0
.end method
