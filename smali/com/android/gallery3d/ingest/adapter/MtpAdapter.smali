.class public Lcom/android/gallery3d/ingest/adapter/MtpAdapter;
.super Landroid/widget/BaseAdapter;
.source "MtpAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGeneration:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mModel:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

.field private mSortOrder:Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    sget-object v0, Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;->Descending:Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    iput-object v0, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mSortOrder:Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mGeneration:I

    .line 47
    iput-object p1, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 49
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public deviceConnected()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mModel:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mModel:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    invoke-virtual {v0}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->getDevice()Landroid/mtp/MtpDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mModel:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mModel:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    invoke-virtual {v0}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mModel:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    iget-object v1, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mSortOrder:Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->get(ILcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 102
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->getPositionForSection(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 115
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMtpDeviceIndex()Lcom/android/gallery3d/ingest/MtpDeviceIndex;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mModel:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    return-object v0
.end method

.method public getPositionForSection(I)I
    .locals 3
    .param p1, "section"    # I

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 158
    const/4 v1, 0x0

    .line 164
    :goto_0
    return v1

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    array-length v0, v1

    .line 161
    .local v0, "numSections":I
    if-lt p1, v0, :cond_1

    .line 162
    add-int/lit8 p1, v0, -0x1

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mModel:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    iget-object v2, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mSortOrder:Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    invoke-virtual {v1, p1, v2}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->getFirstPositionForBucketNumber(ILcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;)I

    move-result v1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->getCount()I

    move-result v0

    .line 170
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 171
    const/4 v1, 0x0

    .line 176
    :goto_0
    return v1

    .line 173
    :cond_0
    if-lt p1, v0, :cond_1

    .line 174
    add-int/lit8 p1, v0, -0x1

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mModel:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    iget-object v2, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mSortOrder:Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    invoke-virtual {v1, p1, v2}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->getBucketNumberForPosition(ILcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;)I

    move-result v1

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mModel:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    iget-object v1, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mSortOrder:Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->getBuckets(Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;)[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->getItemViewType(I)I

    move-result v2

    .line 132
    .local v2, "type":I
    if-nez v2, :cond_1

    .line 134
    if-nez p2, :cond_0

    .line 135
    iget-object v3, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04004c

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ingest/ui/MtpThumbnailTileView;

    .line 140
    .local v1, "imageView":Lcom/android/gallery3d/ingest/ui/MtpThumbnailTileView;
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mModel:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    invoke-virtual {v3}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->getDevice()Landroid/mtp/MtpDevice;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/mtp/MtpObjectInfo;

    iget v5, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mGeneration:I

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/gallery3d/ingest/ui/MtpThumbnailTileView;->setMtpDeviceAndObjectInfo(Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;I)V

    .line 151
    .end local v1    # "imageView":Lcom/android/gallery3d/ingest/ui/MtpThumbnailTileView;
    :goto_1
    return-object v1

    :cond_0
    move-object v1, p2

    .line 138
    check-cast v1, Lcom/android/gallery3d/ingest/ui/MtpThumbnailTileView;

    .restart local v1    # "imageView":Lcom/android/gallery3d/ingest/ui/MtpThumbnailTileView;
    goto :goto_0

    .line 144
    .end local v1    # "imageView":Lcom/android/gallery3d/ingest/ui/MtpThumbnailTileView;
    :cond_1
    if-nez p2, :cond_2

    .line 145
    iget-object v3, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04004a

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ingest/ui/DateTileView;

    .line 150
    .local v0, "dateTile":Lcom/android/gallery3d/ingest/ui/DateTileView;
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ingest/SimpleDate;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ingest/ui/DateTileView;->setDate(Lcom/android/gallery3d/ingest/SimpleDate;)V

    move-object v1, v0

    .line 151
    goto :goto_1

    .end local v0    # "dateTile":Lcom/android/gallery3d/ingest/ui/DateTileView;
    :cond_2
    move-object v0, p2

    .line 148
    check-cast v0, Lcom/android/gallery3d/ingest/ui/DateTileView;

    .restart local v0    # "dateTile":Lcom/android/gallery3d/ingest/ui/DateTileView;
    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x2

    return v0
.end method

.method public indexReady()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mModel:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mModel:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    invoke-virtual {v0}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->indexReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public itemAtPositionIsBucket(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->getItemViewType(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mGeneration:I

    .line 63
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 64
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mGeneration:I

    .line 69
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 70
    return-void
.end method

.method public setMtpDeviceIndex(Lcom/android/gallery3d/ingest/MtpDeviceIndex;)V
    .locals 0
    .param p1, "index"    # Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mModel:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    .line 53
    invoke-virtual {p0}, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->notifyDataSetChanged()V

    .line 54
    return-void
.end method

.method public translatePositionWithoutLabels(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mModel:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 190
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mModel:Lcom/android/gallery3d/ingest/MtpDeviceIndex;

    iget-object v1, p0, Lcom/android/gallery3d/ingest/adapter/MtpAdapter;->mSortOrder:Lcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/ingest/MtpDeviceIndex;->getPositionFromPositionWithoutLabels(ILcom/android/gallery3d/ingest/MtpDeviceIndex$SortOrder;)I

    move-result v0

    goto :goto_0
.end method
