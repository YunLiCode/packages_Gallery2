.class Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/StitchingChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateProgressListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/gallery3d/app/PhotoPage;
    .param p2, "x1"    # Lcom/android/gallery3d/app/PhotoPage$1;

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    return-void
.end method

.method private sendUpdate(Landroid/net/Uri;I)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "message"    # I

    .prologue
    .line 254
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 255
    .local v0, "currentPhoto":Lcom/android/gallery3d/data/MediaObject;
    instance-of v2, v0, Lcom/android/gallery3d/data/LocalImage;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 257
    .local v1, "isCurrentPhoto":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 258
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 260
    :cond_0
    return-void

    .line 255
    .end local v1    # "isCurrentPhoto":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onStitchingProgress(Landroid/net/Uri;I)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "progress"    # I

    .prologue
    .line 250
    const/16 v0, 0xd

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;->sendUpdate(Landroid/net/Uri;I)V

    .line 251
    return-void
.end method

.method public onStitchingQueued(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 245
    const/16 v0, 0xd

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;->sendUpdate(Landroid/net/Uri;I)V

    .line 246
    return-void
.end method

.method public onStitchingResult(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 240
    const/16 v0, 0xb

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;->sendUpdate(Landroid/net/Uri;I)V

    .line 241
    return-void
.end method
