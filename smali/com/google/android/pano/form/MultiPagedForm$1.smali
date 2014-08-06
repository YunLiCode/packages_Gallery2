.class Lcom/google/android/pano/form/MultiPagedForm$1;
.super Ljava/lang/Object;
.source "MultiPagedForm.java"

# interfaces
.implements Lcom/google/android/pano/dialog/ActionAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/pano/form/MultiPagedForm;->createResultActionFragment()Landroid/app/Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/form/MultiPagedForm;


# direct methods
.method constructor <init>(Lcom/google/android/pano/form/MultiPagedForm;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/google/android/pano/form/MultiPagedForm$1;->this$0:Lcom/google/android/pano/form/MultiPagedForm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionClicked(Lcom/google/android/pano/dialog/Action;)V
    .locals 7
    .param p1, "action"    # Lcom/google/android/pano/dialog/Action;

    .prologue
    .line 371
    iget-object v5, p0, Lcom/google/android/pano/form/MultiPagedForm$1;->this$0:Lcom/google/android/pano/form/MultiPagedForm;

    invoke-virtual {p1}, Lcom/google/android/pano/dialog/Action;->getKey()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/google/android/pano/form/MultiPagedForm;->getKeyFromKey(Ljava/lang/String;)Lcom/google/android/pano/form/MultiPagedForm$Key;
    invoke-static {v5, v6}, Lcom/google/android/pano/form/MultiPagedForm;->access$000(Lcom/google/android/pano/form/MultiPagedForm;Ljava/lang/String;)Lcom/google/android/pano/form/MultiPagedForm$Key;

    move-result-object v3

    .line 372
    .local v3, "key":Lcom/google/android/pano/form/MultiPagedForm$Key;
    if-eqz v3, :cond_1

    .line 373
    sget-object v5, Lcom/google/android/pano/form/MultiPagedForm$4;->$SwitchMap$com$google$android$pano$form$MultiPagedForm$Key:[I

    invoke-virtual {v3}, Lcom/google/android/pano/form/MultiPagedForm$Key;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 375
    :pswitch_0
    iget-object v5, p0, Lcom/google/android/pano/form/MultiPagedForm$1;->this$0:Lcom/google/android/pano/form/MultiPagedForm;

    iget-object v6, p0, Lcom/google/android/pano/form/MultiPagedForm$1;->this$0:Lcom/google/android/pano/form/MultiPagedForm;

    # getter for: Lcom/google/android/pano/form/MultiPagedForm;->mFormPages:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/google/android/pano/form/MultiPagedForm;->access$100(Lcom/google/android/pano/form/MultiPagedForm;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/pano/form/MultiPagedForm;->onComplete(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 378
    :pswitch_1
    iget-object v5, p0, Lcom/google/android/pano/form/MultiPagedForm$1;->this$0:Lcom/google/android/pano/form/MultiPagedForm;

    iget-object v6, p0, Lcom/google/android/pano/form/MultiPagedForm$1;->this$0:Lcom/google/android/pano/form/MultiPagedForm;

    # getter for: Lcom/google/android/pano/form/MultiPagedForm;->mFormPages:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/google/android/pano/form/MultiPagedForm;->access$100(Lcom/google/android/pano/form/MultiPagedForm;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/pano/form/MultiPagedForm;->onCancel(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 384
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/pano/dialog/Action;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, "formPageKey":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v5, p0, Lcom/google/android/pano/form/MultiPagedForm$1;->this$0:Lcom/google/android/pano/form/MultiPagedForm;

    # getter for: Lcom/google/android/pano/form/MultiPagedForm;->mFormPages:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/google/android/pano/form/MultiPagedForm;->access$100(Lcom/google/android/pano/form/MultiPagedForm;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "size":I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 386
    iget-object v5, p0, Lcom/google/android/pano/form/MultiPagedForm$1;->this$0:Lcom/google/android/pano/form/MultiPagedForm;

    # getter for: Lcom/google/android/pano/form/MultiPagedForm;->mFormPages:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/google/android/pano/form/MultiPagedForm;->access$100(Lcom/google/android/pano/form/MultiPagedForm;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/form/FormPage;

    .line 387
    .local v0, "formPage":Lcom/google/android/pano/form/FormPage;
    invoke-virtual {v0}, Lcom/google/android/pano/form/FormPage;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 388
    iget-object v5, p0, Lcom/google/android/pano/form/MultiPagedForm$1;->this$0:Lcom/google/android/pano/form/MultiPagedForm;

    # getter for: Lcom/google/android/pano/form/MultiPagedForm;->mFlowStack:Ljava/util/Stack;
    invoke-static {v5}, Lcom/google/android/pano/form/MultiPagedForm;->access$200(Lcom/google/android/pano/form/MultiPagedForm;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v5, p0, Lcom/google/android/pano/form/MultiPagedForm$1;->this$0:Lcom/google/android/pano/form/MultiPagedForm;

    # invokes: Lcom/google/android/pano/form/MultiPagedForm;->displayCurrentStep()V
    invoke-static {v5}, Lcom/google/android/pano/form/MultiPagedForm;->access$300(Lcom/google/android/pano/form/MultiPagedForm;)V

    goto :goto_0

    .line 385
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 373
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
