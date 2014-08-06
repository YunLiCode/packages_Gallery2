.class Lcom/google/android/pano/form/MultiPagedForm$3;
.super Ljava/lang/Object;
.source "MultiPagedForm.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/pano/form/MultiPagedForm;->attachListeners(Lcom/google/android/pano/dialog/EditTextFragment;Lcom/google/android/pano/form/FormPage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/form/MultiPagedForm;

.field final synthetic val$formPage:Lcom/google/android/pano/form/FormPage;


# direct methods
.method constructor <init>(Lcom/google/android/pano/form/MultiPagedForm;Lcom/google/android/pano/form/FormPage;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcom/google/android/pano/form/MultiPagedForm$3;->this$0:Lcom/google/android/pano/form/MultiPagedForm;

    iput-object p2, p0, Lcom/google/android/pano/form/MultiPagedForm$3;->val$formPage:Lcom/google/android/pano/form/FormPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/android/pano/form/MultiPagedForm$3;->this$0:Lcom/google/android/pano/form/MultiPagedForm;

    iget-object v1, p0, Lcom/google/android/pano/form/MultiPagedForm$3;->val$formPage:Lcom/google/android/pano/form/FormPage;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/google/android/pano/form/MultiPagedForm;->handleStringPageResult(Lcom/google/android/pano/form/FormPage;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/pano/form/MultiPagedForm;->access$400(Lcom/google/android/pano/form/MultiPagedForm;Lcom/google/android/pano/form/FormPage;Ljava/lang/String;)V

    .line 473
    const/4 v0, 0x1

    return v0
.end method
