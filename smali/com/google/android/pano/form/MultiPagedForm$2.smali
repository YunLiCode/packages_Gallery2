.class Lcom/google/android/pano/form/MultiPagedForm$2;
.super Ljava/lang/Object;
.source "MultiPagedForm.java"

# interfaces
.implements Lcom/google/android/pano/dialog/ActionAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/pano/form/MultiPagedForm;->createActionFragment(Lcom/google/android/pano/form/FormPage;)Landroid/app/Fragment;
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
    .line 431
    iput-object p1, p0, Lcom/google/android/pano/form/MultiPagedForm$2;->this$0:Lcom/google/android/pano/form/MultiPagedForm;

    iput-object p2, p0, Lcom/google/android/pano/form/MultiPagedForm$2;->val$formPage:Lcom/google/android/pano/form/FormPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionClicked(Lcom/google/android/pano/dialog/Action;)V
    .locals 3
    .param p1, "action"    # Lcom/google/android/pano/dialog/Action;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/android/pano/form/MultiPagedForm$2;->this$0:Lcom/google/android/pano/form/MultiPagedForm;

    iget-object v1, p0, Lcom/google/android/pano/form/MultiPagedForm$2;->val$formPage:Lcom/google/android/pano/form/FormPage;

    invoke-virtual {p1}, Lcom/google/android/pano/dialog/Action;->getKey()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/google/android/pano/form/MultiPagedForm;->handleStringPageResult(Lcom/google/android/pano/form/FormPage;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/pano/form/MultiPagedForm;->access$400(Lcom/google/android/pano/form/MultiPagedForm;Lcom/google/android/pano/form/FormPage;Ljava/lang/String;)V

    .line 436
    return-void
.end method
