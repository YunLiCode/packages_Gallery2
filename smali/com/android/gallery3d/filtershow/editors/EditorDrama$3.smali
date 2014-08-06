.class Lcom/android/gallery3d/filtershow/editors/EditorDrama$3;
.super Ljava/lang/Object;
.source "EditorDrama.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/EditorDrama;->selectMenuItem(Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/editors/EditorDrama;

.field final synthetic val$buttonText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/EditorDrama;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/EditorDrama$3;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDrama;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/EditorDrama$3;->val$buttonText:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorDrama$3;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDrama;

    # getter for: Lcom/android/gallery3d/filtershow/editors/EditorDrama;->mButton:Lcom/android/gallery3d/filtershow/editors/SwapButton;
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/editors/EditorDrama;->access$000(Lcom/android/gallery3d/filtershow/editors/EditorDrama;)Lcom/android/gallery3d/filtershow/editors/SwapButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorDrama$3;->val$buttonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/editors/SwapButton;->setText(Ljava/lang/CharSequence;)V

    .line 118
    return-void
.end method
