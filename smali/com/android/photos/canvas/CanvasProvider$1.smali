.class Lcom/android/photos/canvas/CanvasProvider$1;
.super Ljava/lang/Object;
.source "CanvasProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/photos/canvas/CanvasProvider;->createImageDescriptor(Landroid/net/Uri;)Landroid/content/res/AssetFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/photos/canvas/CanvasProvider;

.field final synthetic val$pipe:[Landroid/os/ParcelFileDescriptor;

.field final synthetic val$waiter:Lcom/android/photos/canvas/CanvasProvider$CacheImageWaiter;


# direct methods
.method constructor <init>(Lcom/android/photos/canvas/CanvasProvider;[Landroid/os/ParcelFileDescriptor;Lcom/android/photos/canvas/CanvasProvider$CacheImageWaiter;)V
    .locals 0

    .prologue
    .line 654
    iput-object p1, p0, Lcom/android/photos/canvas/CanvasProvider$1;->this$0:Lcom/android/photos/canvas/CanvasProvider;

    iput-object p2, p0, Lcom/android/photos/canvas/CanvasProvider$1;->val$pipe:[Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/android/photos/canvas/CanvasProvider$1;->val$waiter:Lcom/android/photos/canvas/CanvasProvider$CacheImageWaiter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 657
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v1, p0, Lcom/android/photos/canvas/CanvasProvider$1;->val$pipe:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 658
    .local v0, "out":Ljava/io/OutputStream;
    iget-object v1, p0, Lcom/android/photos/canvas/CanvasProvider$1;->val$waiter:Lcom/android/photos/canvas/CanvasProvider$CacheImageWaiter;

    invoke-virtual {v1, v0}, Lcom/android/photos/canvas/CanvasProvider$CacheImageWaiter;->copyToPipe(Ljava/io/OutputStream;)V

    .line 659
    return-void
.end method
