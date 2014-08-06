.class public Lcom/android/gallery3d/filtershow/state/StatePanel;
.super Landroid/support/v4/app/Fragment;
.source "StatePanel.java"


# instance fields
.field private mMainView:Landroid/widget/LinearLayout;

.field private track:Lcom/android/gallery3d/filtershow/state/StatePanelTrack;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    const v1, 0x7f04003d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/state/StatePanel;->mMainView:Landroid/widget/LinearLayout;

    .line 39
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/state/StatePanel;->mMainView:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0102

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "panel":Landroid/view/View;
    check-cast v0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;

    .end local v0    # "panel":Landroid/view/View;
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/state/StatePanel;->track:Lcom/android/gallery3d/filtershow/state/StatePanelTrack;

    .line 41
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/state/StatePanel;->track:Lcom/android/gallery3d/filtershow/state/StatePanelTrack;

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getState()Lcom/android/gallery3d/filtershow/state/StateAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->setAdapter(Lcom/android/gallery3d/filtershow/state/StateAdapter;)V

    .line 42
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/state/StatePanel;->mMainView:Landroid/widget/LinearLayout;

    return-object v1
.end method
