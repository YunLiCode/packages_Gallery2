.class public abstract Lcom/google/android/pano/form/MultiPagedForm;
.super Lcom/google/android/pano/dialog/DialogActivity;
.source "MultiPagedForm.java"

# interfaces
.implements Lcom/google/android/pano/dialog/ActionAdapter$Listener;
.implements Lcom/google/android/pano/form/FormPageResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/form/MultiPagedForm$4;,
        Lcom/google/android/pano/form/MultiPagedForm$Key;
    }
.end annotation


# instance fields
.field private final mFlowStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mFormPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/pano/form/FormPage;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/google/android/pano/dialog/ActionAdapter$Listener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/pano/dialog/DialogActivity;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/form/MultiPagedForm;->mFormPages:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/form/MultiPagedForm;->mFlowStack:Ljava/util/Stack;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/pano/form/MultiPagedForm;->mListener:Lcom/google/android/pano/dialog/ActionAdapter$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/pano/form/MultiPagedForm;Ljava/lang/String;)Lcom/google/android/pano/form/MultiPagedForm$Key;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/form/MultiPagedForm;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/pano/form/MultiPagedForm;->getKeyFromKey(Ljava/lang/String;)Lcom/google/android/pano/form/MultiPagedForm$Key;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/pano/form/MultiPagedForm;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/form/MultiPagedForm;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/pano/form/MultiPagedForm;->mFormPages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/pano/form/MultiPagedForm;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/form/MultiPagedForm;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/pano/form/MultiPagedForm;->mFlowStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/pano/form/MultiPagedForm;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/form/MultiPagedForm;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/pano/form/MultiPagedForm;->displayCurrentStep()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/pano/form/MultiPagedForm;Lcom/google/android/pano/form/FormPage;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/form/MultiPagedForm;
    .param p1, "x1"    # Lcom/google/android/pano/form/FormPage;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/form/MultiPagedForm;->handleStringPageResult(Lcom/google/android/pano/form/FormPage;Ljava/lang/String;)V

    return-void
.end method

.method private attachListeners(Lcom/google/android/pano/dialog/EditTextFragment;Lcom/google/android/pano/form/FormPage;)V
    .locals 1
    .param p1, "editTextFragment"    # Lcom/google/android/pano/dialog/EditTextFragment;
    .param p2, "formPage"    # Lcom/google/android/pano/form/FormPage;

    .prologue
    .line 468
    new-instance v0, Lcom/google/android/pano/form/MultiPagedForm$3;

    invoke-direct {v0, p0, p2}, Lcom/google/android/pano/form/MultiPagedForm$3;-><init>(Lcom/google/android/pano/form/MultiPagedForm;Lcom/google/android/pano/form/FormPage;)V

    invoke-virtual {p1, v0}, Lcom/google/android/pano/dialog/EditTextFragment;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 476
    return-void
.end method

.method private createActionFragment(Lcom/google/android/pano/form/FormPage;)Landroid/app/Fragment;
    .locals 7
    .param p1, "formPage"    # Lcom/google/android/pano/form/FormPage;

    .prologue
    .line 431
    new-instance v6, Lcom/google/android/pano/form/MultiPagedForm$2;

    invoke-direct {v6, p0, p1}, Lcom/google/android/pano/form/MultiPagedForm$2;-><init>(Lcom/google/android/pano/form/MultiPagedForm;Lcom/google/android/pano/form/FormPage;)V

    iput-object v6, p0, Lcom/google/android/pano/form/MultiPagedForm;->mListener:Lcom/google/android/pano/dialog/ActionAdapter$Listener;

    .line 439
    invoke-direct {p0, p1}, Lcom/google/android/pano/form/MultiPagedForm;->getActions(Lcom/google/android/pano/form/FormPage;)Ljava/util/ArrayList;

    move-result-object v1

    .line 441
    .local v1, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    const/4 v4, 0x0

    .line 442
    .local v4, "selectedAction":Lcom/google/android/pano/dialog/Action;
    invoke-virtual {p1}, Lcom/google/android/pano/form/FormPage;->getDataSummary()Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, "choice":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 444
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/dialog/Action;

    .line 445
    .local v0, "action":Lcom/google/android/pano/dialog/Action;
    invoke-virtual {v0}, Lcom/google/android/pano/dialog/Action;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 446
    move-object v4, v0

    .line 451
    .end local v0    # "action":Lcom/google/android/pano/dialog/Action;
    :cond_0
    invoke-virtual {p0, p1, v1, v4}, Lcom/google/android/pano/form/MultiPagedForm;->getActionFragment(Lcom/google/android/pano/form/FormPage;Ljava/util/ArrayList;Lcom/google/android/pano/dialog/Action;)Lcom/google/android/pano/dialog/ActionFragment;

    move-result-object v6

    return-object v6

    .line 443
    .restart local v0    # "action":Lcom/google/android/pano/dialog/Action;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private createEditTextFragment(Lcom/google/android/pano/form/FormPage;)Landroid/app/Fragment;
    .locals 2
    .param p1, "formPage"    # Lcom/google/android/pano/form/FormPage;

    .prologue
    .line 461
    invoke-virtual {p1}, Lcom/google/android/pano/form/FormPage;->getDataSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/pano/form/MultiPagedForm;->getEditTextFragment(Ljava/lang/String;)Lcom/google/android/pano/dialog/EditTextFragment;

    move-result-object v0

    .line 462
    .local v0, "editTextFragment":Lcom/google/android/pano/dialog/EditTextFragment;
    invoke-direct {p0, v0, p1}, Lcom/google/android/pano/form/MultiPagedForm;->attachListeners(Lcom/google/android/pano/dialog/EditTextFragment;Lcom/google/android/pano/form/FormPage;)V

    .line 463
    return-object v0
.end method

.method private createPasswordEditTextFragment(Lcom/google/android/pano/form/FormPage;)Landroid/app/Fragment;
    .locals 2
    .param p1, "formPage"    # Lcom/google/android/pano/form/FormPage;

    .prologue
    .line 455
    invoke-virtual {p1}, Lcom/google/android/pano/form/FormPage;->getDataSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/pano/form/MultiPagedForm;->getPasswordEditTextFragment(Ljava/lang/String;)Lcom/google/android/pano/dialog/EditTextFragment;

    move-result-object v0

    .line 456
    .local v0, "editTextFragment":Lcom/google/android/pano/dialog/EditTextFragment;
    invoke-direct {p0, v0, p1}, Lcom/google/android/pano/form/MultiPagedForm;->attachListeners(Lcom/google/android/pano/dialog/EditTextFragment;Lcom/google/android/pano/form/FormPage;)V

    .line 457
    return-object v0
.end method

.method private createResultActionFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 367
    new-instance v0, Lcom/google/android/pano/form/MultiPagedForm$1;

    invoke-direct {v0, p0}, Lcom/google/android/pano/form/MultiPagedForm$1;-><init>(Lcom/google/android/pano/form/MultiPagedForm;)V

    iput-object v0, p0, Lcom/google/android/pano/form/MultiPagedForm;->mListener:Lcom/google/android/pano/dialog/ActionAdapter$Listener;

    .line 397
    invoke-direct {p0}, Lcom/google/android/pano/form/MultiPagedForm;->getResultActions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/pano/form/MultiPagedForm;->getResultActionFragment(Ljava/util/ArrayList;)Lcom/google/android/pano/dialog/ActionFragment;

    move-result-object v0

    return-object v0
.end method

.method private createResultContentFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/google/android/pano/form/MultiPagedForm;->getResultContentFragment()Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private displayCurrentStep()V
    .locals 4

    .prologue
    .line 342
    iget-object v2, p0, Lcom/google/android/pano/form/MultiPagedForm;->mFlowStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 344
    .local v0, "currentLocation":Ljava/lang/Object;
    instance-of v2, v0, Lcom/google/android/pano/form/MultiPagedForm;

    if-eqz v2, :cond_0

    .line 345
    invoke-direct {p0}, Lcom/google/android/pano/form/MultiPagedForm;->createResultContentFragment()Landroid/app/Fragment;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/pano/form/MultiPagedForm;->createResultActionFragment()Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/pano/form/MultiPagedForm;->setContentAndActionFragments(Landroid/app/Fragment;Landroid/app/Fragment;)V

    .line 359
    :goto_0
    return-void

    .line 347
    :cond_0
    instance-of v2, v0, Lcom/google/android/pano/form/FormPage;

    if-eqz v2, :cond_2

    move-object v1, v0

    .line 348
    check-cast v1, Lcom/google/android/pano/form/FormPage;

    .line 349
    .local v1, "page":Lcom/google/android/pano/form/FormPage;
    invoke-virtual {v1}, Lcom/google/android/pano/form/FormPage;->getType()Lcom/google/android/pano/form/FormPage$Type;

    move-result-object v2

    sget-object v3, Lcom/google/android/pano/form/FormPage$Type;->INTENT:Lcom/google/android/pano/form/FormPage$Type;

    if-ne v2, v3, :cond_1

    .line 350
    invoke-virtual {v1}, Lcom/google/android/pano/form/FormPage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/google/android/pano/form/MultiPagedForm;->startActivityForResult(Landroid/content/Intent;I)V

    .line 352
    :cond_1
    invoke-virtual {p0, v1, p0}, Lcom/google/android/pano/form/MultiPagedForm;->displayPage(Lcom/google/android/pano/form/FormPage;Lcom/google/android/pano/form/FormPageResultListener;)V

    goto :goto_0

    .line 356
    .end local v1    # "page":Lcom/google/android/pano/form/FormPage;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/android/pano/form/MultiPagedForm;->setResult(I)V

    .line 357
    invoke-virtual {p0}, Lcom/google/android/pano/form/MultiPagedForm;->finish()V

    goto :goto_0
.end method

.method private findNextIncompleteStep()Lcom/google/android/pano/form/FormPage;
    .locals 4

    .prologue
    .line 331
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/google/android/pano/form/MultiPagedForm;->mFormPages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 332
    iget-object v3, p0, Lcom/google/android/pano/form/MultiPagedForm;->mFormPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/form/FormPage;

    .line 333
    .local v0, "formPage":Lcom/google/android/pano/form/FormPage;
    invoke-virtual {v0}, Lcom/google/android/pano/form/FormPage;->isComplete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 337
    .end local v0    # "formPage":Lcom/google/android/pano/form/FormPage;
    :goto_1
    return-object v0

    .line 331
    .restart local v0    # "formPage":Lcom/google/android/pano/form/FormPage;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 337
    .end local v0    # "formPage":Lcom/google/android/pano/form/FormPage;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getActions(Lcom/google/android/pano/form/FormPage;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "formPage"    # Lcom/google/android/pano/form/FormPage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/pano/form/FormPage;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/pano/dialog/Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    invoke-virtual {p1}, Lcom/google/android/pano/form/FormPage;->getChoices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 411
    .local v1, "choice":Ljava/lang/String;
    new-instance v3, Lcom/google/android/pano/dialog/Action$Builder;

    invoke-direct {v3}, Lcom/google/android/pano/dialog/Action$Builder;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/android/pano/dialog/Action$Builder;->key(Ljava/lang/String;)Lcom/google/android/pano/dialog/Action$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/pano/dialog/Action$Builder;->title(Ljava/lang/String;)Lcom/google/android/pano/dialog/Action$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/pano/dialog/Action$Builder;->build()Lcom/google/android/pano/dialog/Action;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 413
    .end local v1    # "choice":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getKeyFromKey(Ljava/lang/String;)Lcom/google/android/pano/form/MultiPagedForm$Key;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 402
    :try_start_0
    invoke-static {p1}, Lcom/google/android/pano/form/MultiPagedForm$Key;->valueOf(Ljava/lang/String;)Lcom/google/android/pano/form/MultiPagedForm$Key;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 404
    :goto_0
    return-object v1

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getResultActions()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/pano/dialog/Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v4, p0, Lcom/google/android/pano/form/MultiPagedForm;->mFormPages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 419
    iget-object v4, p0, Lcom/google/android/pano/form/MultiPagedForm;->mFormPages:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/pano/form/FormPage;

    .line 420
    .local v1, "formPage":Lcom/google/android/pano/form/FormPage;
    new-instance v4, Lcom/google/android/pano/dialog/Action$Builder;

    invoke-direct {v4}, Lcom/google/android/pano/dialog/Action$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/pano/form/FormPage;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/pano/dialog/Action$Builder;->key(Ljava/lang/String;)Lcom/google/android/pano/dialog/Action$Builder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/pano/form/FormPage;->getDataSummary()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/pano/dialog/Action$Builder;->title(Ljava/lang/String;)Lcom/google/android/pano/dialog/Action$Builder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/pano/form/FormPage;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/pano/dialog/Action$Builder;->description(Ljava/lang/String;)Lcom/google/android/pano/dialog/Action$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/pano/dialog/Action$Builder;->build()Lcom/google/android/pano/dialog/Action;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 423
    .end local v1    # "formPage":Lcom/google/android/pano/form/FormPage;
    :cond_0
    new-instance v4, Lcom/google/android/pano/dialog/Action$Builder;

    invoke-direct {v4}, Lcom/google/android/pano/dialog/Action$Builder;-><init>()V

    sget-object v5, Lcom/google/android/pano/form/MultiPagedForm$Key;->CANCEL:Lcom/google/android/pano/form/MultiPagedForm$Key;

    invoke-virtual {v5}, Lcom/google/android/pano/form/MultiPagedForm$Key;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/pano/dialog/Action$Builder;->key(Ljava/lang/String;)Lcom/google/android/pano/dialog/Action$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/pano/form/MultiPagedForm;->getFormCancelActionTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/pano/dialog/Action$Builder;->title(Ljava/lang/String;)Lcom/google/android/pano/dialog/Action$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/pano/dialog/Action$Builder;->build()Lcom/google/android/pano/dialog/Action;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    new-instance v4, Lcom/google/android/pano/dialog/Action$Builder;

    invoke-direct {v4}, Lcom/google/android/pano/dialog/Action$Builder;-><init>()V

    sget-object v5, Lcom/google/android/pano/form/MultiPagedForm$Key;->DONE:Lcom/google/android/pano/form/MultiPagedForm$Key;

    invoke-virtual {v5}, Lcom/google/android/pano/form/MultiPagedForm$Key;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/pano/dialog/Action$Builder;->key(Ljava/lang/String;)Lcom/google/android/pano/dialog/Action$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/pano/form/MultiPagedForm;->getFormIsCorrectActionTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/pano/dialog/Action$Builder;->title(Ljava/lang/String;)Lcom/google/android/pano/dialog/Action$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/pano/dialog/Action$Builder;->build()Lcom/google/android/pano/dialog/Action;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    return-object v0
.end method

.method private handleStringPageResult(Lcom/google/android/pano/form/FormPage;Ljava/lang/String;)V
    .locals 2
    .param p1, "page"    # Lcom/google/android/pano/form/FormPage;
    .param p2, "stringResults"    # Ljava/lang/String;

    .prologue
    .line 479
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 480
    .local v0, "bundleResults":Landroid/os/Bundle;
    sget-object v1, Lcom/google/android/pano/form/FormPage;->DATA_KEY_SUMMARY_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0, p1, v0}, Lcom/google/android/pano/form/MultiPagedForm;->onBundlePageResult(Lcom/google/android/pano/form/FormPage;Landroid/os/Bundle;)V

    .line 482
    return-void
.end method

.method private performNextStep()V
    .locals 2

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/google/android/pano/form/MultiPagedForm;->findNextIncompleteStep()Lcom/google/android/pano/form/FormPage;

    move-result-object v0

    .line 322
    .local v0, "nextIncompleteStep":Lcom/google/android/pano/form/FormPage;
    if-nez v0, :cond_0

    .line 323
    iget-object v1, p0, Lcom/google/android/pano/form/MultiPagedForm;->mFlowStack:Ljava/util/Stack;

    invoke-virtual {v1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :goto_0
    invoke-direct {p0}, Lcom/google/android/pano/form/MultiPagedForm;->displayCurrentStep()V

    .line 328
    return-void

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/google/android/pano/form/MultiPagedForm;->mFlowStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected displayPage(Lcom/google/android/pano/form/FormPage;Lcom/google/android/pano/form/FormPageResultListener;)V
    .locals 2
    .param p1, "formPage"    # Lcom/google/android/pano/form/FormPage;
    .param p2, "listener"    # Lcom/google/android/pano/form/FormPageResultListener;

    .prologue
    .line 172
    sget-object v0, Lcom/google/android/pano/form/MultiPagedForm$4;->$SwitchMap$com$google$android$pano$form$FormPage$Type:[I

    invoke-virtual {p1}, Lcom/google/android/pano/form/FormPage;->getType()Lcom/google/android/pano/form/FormPage$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/pano/form/FormPage$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 189
    :goto_0
    return-void

    .line 174
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/google/android/pano/form/MultiPagedForm;->getContentFragment(Lcom/google/android/pano/form/FormPage;)Landroid/app/Fragment;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/pano/form/MultiPagedForm;->createPasswordEditTextFragment(Lcom/google/android/pano/form/FormPage;)Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/pano/form/MultiPagedForm;->setContentAndActionFragments(Landroid/app/Fragment;Landroid/app/Fragment;)V

    goto :goto_0

    .line 178
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/google/android/pano/form/MultiPagedForm;->getContentFragment(Lcom/google/android/pano/form/FormPage;)Landroid/app/Fragment;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/pano/form/MultiPagedForm;->createEditTextFragment(Lcom/google/android/pano/form/FormPage;)Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/pano/form/MultiPagedForm;->setContentAndActionFragments(Landroid/app/Fragment;Landroid/app/Fragment;)V

    goto :goto_0

    .line 182
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/google/android/pano/form/MultiPagedForm;->getContentFragment(Lcom/google/android/pano/form/FormPage;)Landroid/app/Fragment;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/pano/form/MultiPagedForm;->createActionFragment(Lcom/google/android/pano/form/FormPage;)Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/pano/form/MultiPagedForm;->setContentAndActionFragments(Landroid/app/Fragment;Landroid/app/Fragment;)V

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getActionFragment(Lcom/google/android/pano/form/FormPage;Ljava/util/ArrayList;Lcom/google/android/pano/dialog/Action;)Lcom/google/android/pano/dialog/ActionFragment;
    .locals 2
    .param p1, "formPage"    # Lcom/google/android/pano/form/FormPage;
    .param p3, "selectedAction"    # Lcom/google/android/pano/dialog/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/pano/form/FormPage;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/pano/dialog/Action;",
            ">;",
            "Lcom/google/android/pano/dialog/Action;",
            ")",
            "Lcom/google/android/pano/dialog/ActionFragment;"
        }
    .end annotation

    .prologue
    .line 250
    .local p2, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    invoke-static {p2}, Lcom/google/android/pano/dialog/ActionFragment;->newInstance(Ljava/util/ArrayList;)Lcom/google/android/pano/dialog/ActionFragment;

    move-result-object v0

    .line 251
    .local v0, "actionFragment":Lcom/google/android/pano/dialog/ActionFragment;
    if-eqz p3, :cond_0

    .line 252
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 253
    .local v1, "indexOfSelection":I
    if-ltz v1, :cond_0

    .line 258
    .end local v1    # "indexOfSelection":I
    :cond_0
    return-object v0
.end method

.method protected getContentFragment(Lcom/google/android/pano/form/FormPage;)Landroid/app/Fragment;
    .locals 1
    .param p1, "formPage"    # Lcom/google/android/pano/form/FormPage;

    .prologue
    .line 199
    invoke-virtual {p1}, Lcom/google/android/pano/form/FormPage;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/pano/dialog/ContentFragment;->newInstance(Ljava/lang/String;)Lcom/google/android/pano/dialog/ContentFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getEditTextFragment(Ljava/lang/String;)Lcom/google/android/pano/dialog/EditTextFragment;
    .locals 1
    .param p1, "initialText"    # Ljava/lang/String;

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/google/android/pano/dialog/EditTextFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/pano/dialog/EditTextFragment;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getFormCancelActionTitle()Ljava/lang/String;
.end method

.method protected abstract getFormIsCorrectActionTitle()Ljava/lang/String;
.end method

.method protected abstract getMainTitle()Ljava/lang/String;
.end method

.method protected getPasswordEditTextFragment(Ljava/lang/String;)Lcom/google/android/pano/dialog/EditTextFragment;
    .locals 2
    .param p1, "initialText"    # Ljava/lang/String;

    .prologue
    .line 222
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/google/android/pano/dialog/EditTextFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/pano/dialog/EditTextFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getResultActionFragment(Ljava/util/ArrayList;)Lcom/google/android/pano/dialog/ActionFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/pano/dialog/Action;",
            ">;)",
            "Lcom/google/android/pano/dialog/ActionFragment;"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    invoke-static {p1}, Lcom/google/android/pano/dialog/ActionFragment;->newInstance(Ljava/util/ArrayList;)Lcom/google/android/pano/dialog/ActionFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getResultContentFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/google/android/pano/form/MultiPagedForm;->getMainTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/pano/dialog/ContentFragment;->newInstance(Ljava/lang/String;)Lcom/google/android/pano/dialog/ContentFragment;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 95
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 96
    const/4 v3, -0x1

    if-ne p2, v3, :cond_6

    .line 97
    iget-object v3, p0, Lcom/google/android/pano/form/MultiPagedForm;->mFlowStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 98
    .local v0, "currentLocation":Ljava/lang/Object;
    instance-of v3, v0, Lcom/google/android/pano/form/FormPage;

    if-eqz v3, :cond_5

    move-object v1, v0

    .line 99
    check-cast v1, Lcom/google/android/pano/form/FormPage;

    .line 100
    .local v1, "page":Lcom/google/android/pano/form/FormPage;
    if-nez p3, :cond_2

    const/4 v2, 0x0

    .line 101
    .local v2, "results":Landroid/os/Bundle;
    :goto_0
    if-nez p3, :cond_3

    .line 102
    const-string v3, "MultiPagedForm"

    const-string v4, "Intent result was null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/google/android/pano/form/MultiPagedForm;->onBundlePageResult(Lcom/google/android/pano/form/FormPage;Landroid/os/Bundle;)V

    .line 116
    .end local v0    # "currentLocation":Ljava/lang/Object;
    .end local v1    # "page":Lcom/google/android/pano/form/FormPage;
    .end local v2    # "results":Landroid/os/Bundle;
    :cond_1
    :goto_2
    return-void

    .line 100
    .restart local v0    # "currentLocation":Ljava/lang/Object;
    .restart local v1    # "page":Lcom/google/android/pano/form/FormPage;
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    .line 103
    .restart local v2    # "results":Landroid/os/Bundle;
    :cond_3
    if-nez v2, :cond_4

    .line 104
    const-string v3, "MultiPagedForm"

    const-string v4, "Intent result extras were null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 105
    :cond_4
    sget-object v3, Lcom/google/android/pano/form/FormPage;->DATA_KEY_SUMMARY_STRING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 106
    const-string v3, "MultiPagedForm"

    const-string v4, "Intent result extras didn\'t have the result summary key!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 110
    .end local v1    # "page":Lcom/google/android/pano/form/FormPage;
    .end local v2    # "results":Landroid/os/Bundle;
    :cond_5
    const-string v3, "MultiPagedForm"

    const-string v4, "Our current location wasn\'t on the top of the stack!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 113
    .end local v0    # "currentLocation":Ljava/lang/Object;
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/pano/form/MultiPagedForm;->onBackPressed()V

    goto :goto_2
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 53
    iget-object v1, p0, Lcom/google/android/pano/form/MultiPagedForm;->mFlowStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 54
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/pano/form/MultiPagedForm;->setResult(I)V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/pano/form/MultiPagedForm;->finish()V

    .line 70
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/google/android/pano/form/MultiPagedForm;->mFlowStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 63
    iget-object v1, p0, Lcom/google/android/pano/form/MultiPagedForm;->mFlowStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 65
    .local v0, "lastLocation":Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/android/pano/form/FormPage;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/pano/form/MultiPagedForm;->mFormPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/google/android/pano/form/MultiPagedForm;->onBackPressed()V

    goto :goto_0

    .line 68
    :cond_1
    invoke-direct {p0}, Lcom/google/android/pano/form/MultiPagedForm;->displayCurrentStep()V

    goto :goto_0
.end method

.method public onBundlePageResult(Lcom/google/android/pano/form/FormPage;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "page"    # Lcom/google/android/pano/form/FormPage;
    .param p2, "bundleResults"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-virtual {p1, p2}, Lcom/google/android/pano/form/FormPage;->complete(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0, p1}, Lcom/google/android/pano/form/MultiPagedForm;->onPageComplete(Lcom/google/android/pano/form/FormPage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/google/android/pano/form/MultiPagedForm;->displayCurrentStep()V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/google/android/pano/form/MultiPagedForm;->performNextStep()V

    goto :goto_0
.end method

.method protected abstract onCancel(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/pano/form/FormPage;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract onComplete(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/pano/form/FormPage;",
            ">;)V"
        }
    .end annotation
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/pano/form/MultiPagedForm;->performNextStep()V

    .line 90
    invoke-super {p0, p1}, Lcom/google/android/pano/dialog/DialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    return-void
.end method

.method protected abstract onPageComplete(Lcom/google/android/pano/form/FormPage;)Z
.end method
