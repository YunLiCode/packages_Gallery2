.class Lcom/android/photos/drawables/AutoThumbnailDrawable$2;
.super Ljava/lang/Object;
.source "AutoThumbnailDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/drawables/AutoThumbnailDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;


# direct methods
.method constructor <init>(Lcom/android/photos/drawables/AutoThumbnailDrawable;)V
    .locals 0

    .prologue
    .line 299
    .local p0, "this":Lcom/android/photos/drawables/AutoThumbnailDrawable$2;, "Lcom/android/photos/drawables/AutoThumbnailDrawable.2;"
    iput-object p1, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable$2;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 302
    .local p0, "this":Lcom/android/photos/drawables/AutoThumbnailDrawable$2;, "Lcom/android/photos/drawables/AutoThumbnailDrawable.2;"
    iget-object v1, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable$2;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    monitor-enter v1

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable$2;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # invokes: Lcom/android/photos/drawables/AutoThumbnailDrawable;->updateDrawMatrixLocked()V
    invoke-static {v0}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$900(Lcom/android/photos/drawables/AutoThumbnailDrawable;)V

    .line 304
    iget-object v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable$2;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    invoke-virtual {v0}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->invalidateSelf()V

    .line 305
    monitor-exit v1

    .line 306
    return-void

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
