.class public Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MtpPagerAdapter.java"


# instance fields
.field private mBroker:Lcom/android/gallery3d/ingest/adapter/CheckBroker;

.field private mGeneration:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mModel:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

.field private mReusableView:Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;

.field private mSortOrder:Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/ingest/adapter/CheckBroker;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "broker"    # Lcom/android/gallery3d/ingest/adapter/CheckBroker;

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;->mGeneration:I

    .line 37
    sget-object v0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;->Descending:Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    iput-object v0, p0, Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;->mSortOrder:Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;->mReusableView:Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 44
    iput-object p2, p0, Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;->mBroker:Lcom/android/gallery3d/ingest/adapter/CheckBroker;

    .line 45
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 81
    move-object v0, p3

    check-cast v0, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;

    .line 82
    .local v0, "v":Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 83
    iget-object v1, p0, Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;->mBroker:Lcom/android/gallery3d/ingest/adapter/CheckBroker;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ingest/adapter/CheckBroker;->unregisterOnCheckedChangeListener(Lcom/android/gallery3d/ingest/adapter/CheckBroker$OnCheckedChangedListener;)V

    .line 84
    iput-object v0, p0, Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;->mReusableView:Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;

    .line 85
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;->mReusableView:Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;

    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 72
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;->mModel:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;->mModel:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    invoke-virtual {v0}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->sizeWithoutLabels()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 90
    iget-object v2, p0, Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;->mReusableView:Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;

    if-eqz v2, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;->mReusableView:Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;

    .line 92
    .local v1, "v":Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;->mReusableView:Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;

    .line 96
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;->mModel:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    iget-object v3, p0, Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;->mSortOrder:Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    invoke-virtual {v2, p2, v3}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->getWithoutLabels(ILcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;)Landroid/mtp/MtpObjectInfo;

    move-result-object v0

    .line 97
    .local v0, "i":Landroid/mtp/MtpObjectInfo;
    invoke-virtual {v1}, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->getImageView()Lcom/android/gallery3d/ingest/ui/MtpImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;->mModel:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    invoke-virtual {v3}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->getDevice()Landroid/mtp/MtpDevice;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;->mGeneration:I

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/gallery3d/ingest/ui/MtpImageView;->setMtpDeviceAndObjectInfo(Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;I)V

    .line 98
    iget-object v2, p0, Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;->mBroker:Lcom/android/gallery3d/ingest/adapter/CheckBroker;

    invoke-virtual {v1, p2, v2}, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;->setPositionAndBroker(ILcom/android/gallery3d/ingest/adapter/CheckBroker;)V

    .line 99
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    return-object v1

    .line 94
    .end local v0    # "i":Landroid/mtp/MtpObjectInfo;
    .end local v1    # "v":Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04004b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;

    .restart local v1    # "v":Lcom/android/gallery3d/ingest/ui/MtpFullscreenView;
    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 76
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;->mGeneration:I

    .line 60
    invoke-super {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 61
    return-void
.end method

.method public setMtpDeviceIndex(Lcom/android/gallery3d/ingest/MtpDeviceIndex;)V
    .locals 0
    .param p1, "index"    # Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;->mModel:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    .line 49
    invoke-virtual {p0}, Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;->notifyDataSetChanged()V

    .line 50
    return-void
.end method

.method public translatePositionWithLabels(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;->mModel:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 65
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;->mModel:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    iget-object v1, p0, Lcom/android/gallery3d/ingest/adapter/MtpPagerAdapter;->mSortOrder:Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->getPositionWithoutLabelsFromPosition(ILcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;)I

    move-result v0

    goto :goto_0
.end method
