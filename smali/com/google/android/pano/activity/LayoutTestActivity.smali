.class public Lcom/google/android/pano/activity/LayoutTestActivity;
.super Landroid/app/Activity;
.source "LayoutTestActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    sget v5, Lcom/google/android/pano/R$layout;->template_activity_dialog:I

    invoke-virtual {p0, v5}, Lcom/google/android/pano/activity/LayoutTestActivity;->setContentView(I)V

    .line 26
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/google/android/pano/activity/LayoutTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 28
    .local v0, "helium":Landroid/view/LayoutInflater;
    sget v5, Lcom/google/android/pano/R$id;->description:I

    invoke-virtual {p0, v5}, Lcom/google/android/pano/activity/LayoutTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 29
    .local v4, "textArea":Landroid/widget/FrameLayout;
    sget v5, Lcom/google/android/pano/R$layout;->test_text:I

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 31
    sget v5, Lcom/google/android/pano/R$id;->action:I

    invoke-virtual {p0, v5}, Lcom/google/android/pano/activity/LayoutTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 32
    .local v1, "listArea":Landroid/widget/FrameLayout;
    sget v5, Lcom/google/android/pano/R$layout;->test_scroll_adapter_view:I

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 34
    sget v5, Lcom/google/android/pano/R$id;->test_list_selector:I

    invoke-virtual {p0, v5}, Lcom/google/android/pano/activity/LayoutTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/pano/widget/ScrollAdapterView;

    .line 36
    .local v2, "scrollAdapter":Lcom/google/android/pano/widget/ScrollAdapterView;
    const/4 v5, 0x4

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Item1"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "Item 2"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "Item 3"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "Item Four"

    aput-object v6, v3, v5

    .line 37
    .local v3, "strings":[Ljava/lang/String;
    new-instance v5, Lcom/google/android/pano/widget/ScrollArrayAdapter;

    sget v6, Lcom/google/android/pano/R$layout;->setup_list_item:I

    sget v7, Lcom/google/android/pano/R$id;->list_item_text:I

    invoke-direct {v5, p0, v6, v7, v3}, Lcom/google/android/pano/widget/ScrollArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Lcom/google/android/pano/widget/ScrollAdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 39
    return-void
.end method
