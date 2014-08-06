.class public Lcom/google/android/pano/dialog/EditTextFragment;
.super Landroid/app/Fragment;
.source "EditTextFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/google/android/pano/dialog/EditTextFragment;->mTextWatcher:Landroid/text/TextWatcher;

    .line 29
    iput-object v0, p0, Lcom/google/android/pano/dialog/EditTextFragment;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/pano/dialog/EditTextFragment;
    .locals 1
    .param p0, "description"    # Ljava/lang/String;
    .param p1, "initialText"    # Ljava/lang/String;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/pano/dialog/EditTextFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/pano/dialog/EditTextFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/pano/dialog/EditTextFragment;
    .locals 3
    .param p0, "description"    # Ljava/lang/String;
    .param p1, "initialText"    # Ljava/lang/String;
    .param p2, "password"    # Z

    .prologue
    .line 53
    new-instance v1, Lcom/google/android/pano/dialog/EditTextFragment;

    invoke-direct {v1}, Lcom/google/android/pano/dialog/EditTextFragment;-><init>()V

    .line 54
    .local v1, "fragment":Lcom/google/android/pano/dialog/EditTextFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "description"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v2, "initialText"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v2, "password"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    invoke-virtual {v1, v0}, Lcom/google/android/pano/dialog/EditTextFragment;->setArguments(Landroid/os/Bundle;)V

    .line 59
    return-object v1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/pano/dialog/EditTextFragment;->mTextWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/android/pano/dialog/EditTextFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-interface {v0, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 112
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/pano/dialog/EditTextFragment;->mTextWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/google/android/pano/dialog/EditTextFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 119
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 74
    const/4 v6, 0x0

    .line 75
    .local v6, "view":Landroid/view/View;
    const/4 v2, 0x0

    .line 76
    .local v2, "editText":Landroid/widget/EditText;
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/EditTextFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "layout_res_id"

    sget v9, Lcom/google/android/pano/R$layout;->edittext_fragment:I

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 77
    .local v5, "layoutResId":I
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/EditTextFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "edit_text_res_id"

    sget v9, Lcom/google/android/pano/R$id;->edittext:I

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 79
    .local v3, "editTextResId":I
    invoke-virtual {p1, v5, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 80
    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "editText":Landroid/widget/EditText;
    check-cast v2, Landroid/widget/EditText;

    .line 82
    .restart local v2    # "editText":Landroid/widget/EditText;
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/EditTextFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "description"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "descString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 84
    sget v7, Lcom/google/android/pano/R$id;->description:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 85
    .local v1, "description":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    .end local v1    # "description":Landroid/widget/TextView;
    :cond_0
    if-eqz v2, :cond_2

    .line 92
    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 93
    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 94
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 95
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/EditTextFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "initialText"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "initialText":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 97
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/EditTextFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "password"

    invoke-virtual {v7, v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 101
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 104
    .end local v4    # "initialText":Ljava/lang/String;
    :cond_2
    return-object v6
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/pano/dialog/EditTextFragment;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/google/android/pano/dialog/EditTextFragment;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/pano/dialog/EditTextFragment;->mTextWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/google/android/pano/dialog/EditTextFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 126
    :cond_0
    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/TextView$OnEditorActionListener;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/pano/dialog/EditTextFragment;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 69
    return-void
.end method
