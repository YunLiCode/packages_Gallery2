.class Lcom/android/gallery3d/ui/GLRootView$2;
.super Ljava/lang/Object;
.source "GLRootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/GLRootView;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/GLRootView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/GLRootView;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLRootView$2;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 368
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView$2;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLRootView;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 369
    .local v1, "root":Landroid/view/View;
    const v2, 0x7f0a010b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 370
    .local v0, "cover":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 371
    return-void
.end method
