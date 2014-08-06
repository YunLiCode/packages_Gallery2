.class public Lcom/google/android/pano/dialog/ContentFragment;
.super Landroid/app/Fragment;
.source "ContentFragment.java"

# interfaces
.implements Lcom/google/android/pano/dialog/LiteFragment;


# instance fields
.field private final mBase:Lcom/google/android/pano/dialog/BaseContentFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 22
    new-instance v0, Lcom/google/android/pano/dialog/BaseContentFragment;

    invoke-direct {v0, p0}, Lcom/google/android/pano/dialog/BaseContentFragment;-><init>(Lcom/google/android/pano/dialog/LiteFragment;)V

    iput-object v0, p0, Lcom/google/android/pano/dialog/ContentFragment;->mBase:Lcom/google/android/pano/dialog/BaseContentFragment;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/google/android/pano/dialog/ContentFragment;
    .locals 2
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 25
    const/4 v0, 0x0

    invoke-static {p0, v1, v1, v0}, Lcom/google/android/pano/dialog/ContentFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/pano/dialog/ContentFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/pano/dialog/ContentFragment;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "breadcrumb"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/pano/dialog/ContentFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/pano/dialog/ContentFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/pano/dialog/ContentFragment;
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "breadcrumb"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "iconResourceId"    # I

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/pano/dialog/ContentFragment;

    invoke-direct {v0}, Lcom/google/android/pano/dialog/ContentFragment;-><init>()V

    .line 35
    .local v0, "fragment":Lcom/google/android/pano/dialog/ContentFragment;
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/pano/dialog/BaseContentFragment;->buildArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/pano/dialog/ContentFragment;->setArguments(Landroid/os/Bundle;)V

    .line 37
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/google/android/pano/dialog/ContentFragment;
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "breadcrumb"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "iconResourceUri"    # Landroid/net/Uri;

    .prologue
    .line 42
    new-instance v0, Lcom/google/android/pano/dialog/ContentFragment;

    invoke-direct {v0}, Lcom/google/android/pano/dialog/ContentFragment;-><init>()V

    .line 43
    .local v0, "fragment":Lcom/google/android/pano/dialog/ContentFragment;
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/pano/dialog/BaseContentFragment;->buildArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/pano/dialog/ContentFragment;->setArguments(Landroid/os/Bundle;)V

    .line 45
    return-object v0
.end method


# virtual methods
.method public getBreadCrumb()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/pano/dialog/ContentFragment;->mBase:Lcom/google/android/pano/dialog/BaseContentFragment;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/BaseContentFragment;->getBreadCrumb()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/pano/dialog/ContentFragment;->mBase:Lcom/google/android/pano/dialog/BaseContentFragment;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/BaseContentFragment;->getDescription()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/pano/dialog/ContentFragment;->mBase:Lcom/google/android/pano/dialog/BaseContentFragment;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/BaseContentFragment;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getIconResourceId()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/pano/dialog/ContentFragment;->mBase:Lcom/google/android/pano/dialog/BaseContentFragment;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/BaseContentFragment;->getIconResourceId()I

    move-result v0

    return v0
.end method

.method public getIconResourceUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/pano/dialog/ContentFragment;->mBase:Lcom/google/android/pano/dialog/BaseContentFragment;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/BaseContentFragment;->getIconResourceUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/pano/dialog/ContentFragment;->mBase:Lcom/google/android/pano/dialog/BaseContentFragment;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/BaseContentFragment;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/pano/dialog/ContentFragment;->mBase:Lcom/google/android/pano/dialog/BaseContentFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/pano/dialog/BaseContentFragment;->onAttach(Landroid/app/Activity;)V

    .line 51
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 52
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/pano/dialog/ContentFragment;->mBase:Lcom/google/android/pano/dialog/BaseContentFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/pano/dialog/BaseContentFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/pano/dialog/ContentFragment;->mBase:Lcom/google/android/pano/dialog/BaseContentFragment;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/BaseContentFragment;->onDestroyView()V

    .line 69
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 70
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/pano/dialog/ContentFragment;->mBase:Lcom/google/android/pano/dialog/BaseContentFragment;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/BaseContentFragment;->onDetach()V

    .line 57
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 58
    return-void
.end method
