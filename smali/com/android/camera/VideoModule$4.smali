.class Lcom/android/camera/VideoModule$4;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoModule;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/camera/VideoModule$4;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/camera/VideoModule$4;->this$0:Lcom/android/camera/VideoModule;

    # invokes: Lcom/android/camera/VideoModule;->startPreview()V
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$800(Lcom/android/camera/VideoModule;)V

    .line 412
    return-void
.end method
