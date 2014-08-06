.class Lcom/android/gallery3d/filtershow/editors/EditorDrama$4;
.super Ljava/lang/Object;
.source "EditorDrama.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/EditorDrama;->swapLeft(Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/editors/EditorDrama;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/EditorDrama;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/EditorDrama$4;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDrama;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorDrama$4;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDrama;

    # getter for: Lcom/android/gallery3d/filtershow/editors/EditorDrama;->mButton:Lcom/android/gallery3d/filtershow/editors/SwapButton;
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->access$000(Lcom/android/gallery3d/filtershow/editors/EditorDrama;)Lcom/android/gallery3d/filtershow/editors/SwapButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/SwapButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 135
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorDrama$4;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDrama;

    # getter for: Lcom/android/gallery3d/filtershow/editors/EditorDrama;->mButton:Lcom/android/gallery3d/filtershow/editors/SwapButton;
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->access$000(Lcom/android/gallery3d/filtershow/editors/EditorDrama;)Lcom/android/gallery3d/filtershow/editors/SwapButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/editors/SwapButton;->setTranslationX(F)V

    .line 136
    return-void
.end method
