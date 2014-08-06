.class public Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;
.super Landroid/database/DataSetObserver;
.source "SectionedAlbumDataAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# instance fields
.field private final mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mLayout:I

.field private sections:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;IILjava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Landroid/content/SharedPreferences;
    .param p3, "headerLayout"    # I
    .param p4, "itemLayout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/SharedPreferences;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$AlbumData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p5, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/android/dreams/phototable/PhotoSource$AlbumData;>;"
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 45
    iput p3, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mLayout:I

    .line 46
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 47
    new-instance v0, Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-direct {v0, p1, p2, p4, p5}, Lcom/android/dreams/phototable/AlbumDataAdapter;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;ILjava/util/List;)V

    iput-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    .line 48
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    new-instance v1, Lcom/android/dreams/phototable/AlbumDataAdapter$AccountComparator;

    invoke-direct {v1}, Lcom/android/dreams/phototable/AlbumDataAdapter$AccountComparator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/dreams/phototable/AlbumDataAdapter;->sort(Ljava/util/Comparator;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->onChanged()V

    .line 50
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-virtual {v0, p0}, Lcom/android/dreams/phototable/AlbumDataAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 51
    return-void
.end method

.method private internalPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->sections:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 206
    .local v0, "offset":I
    if-gez v0, :cond_0

    .line 207
    add-int/lit8 v1, v0, 0x1

    neg-int v0, v1

    .line 209
    :cond_0
    sub-int v1, p1, v0

    return v1
.end method

.method private isHeader(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->sections:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-virtual {v0}, Lcom/android/dreams/phototable/AlbumDataAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method areAllSelected()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-virtual {v0}, Lcom/android/dreams/phototable/AlbumDataAdapter;->areAllSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-virtual {v0}, Lcom/android/dreams/phototable/AlbumDataAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->sections:[I

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->internalPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dreams/phototable/AlbumDataAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->account:Ljava/lang/String;

    .line 133
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->internalPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dreams/phototable/AlbumDataAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 139
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-virtual {v0}, Lcom/android/dreams/phototable/AlbumDataAdapter;->getViewTypeCount()I

    move-result v0

    .line 147
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->internalPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dreams/phototable/AlbumDataAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->isHeader(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 180
    move-object v0, p2

    .line 181
    .local v0, "item":Landroid/view/View;
    if-nez v0, :cond_0

    .line 182
    iget-object v4, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mLayout:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 184
    :cond_0
    const v4, 0x7f0a0064

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 185
    .local v3, "vTextView":Landroid/view/View;
    if-eqz v3, :cond_1

    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    move-object v2, v3

    .line 186
    check-cast v2, Landroid/widget/TextView;

    .line 187
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_1
    move-object v1, v0

    .line 194
    .end local v0    # "item":Landroid/view/View;
    .end local v3    # "vTextView":Landroid/view/View;
    .local v1, "item":Landroid/view/View;
    :goto_0
    return-object v1

    .line 193
    .end local v1    # "item":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->internalPosition(I)I

    move-result v5

    invoke-virtual {v4, v5, p2, p3}, Lcom/android/dreams/phototable/AlbumDataAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "item":Landroid/view/View;
    move-object v1, v0

    .line 194
    .end local v0    # "item":Landroid/view/View;
    .restart local v1    # "item":Landroid/view/View;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-virtual {v0}, Lcom/android/dreams/phototable/AlbumDataAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-virtual {v0}, Lcom/android/dreams/phototable/AlbumDataAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-virtual {v0}, Lcom/android/dreams/phototable/AlbumDataAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->internalPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dreams/phototable/AlbumDataAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onChanged()V
    .locals 6

    .prologue
    .line 68
    const/4 v2, 0x0

    .line 69
    .local v2, "numSections":I
    const-string v3, ""

    .line 71
    .local v3, "previous":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-virtual {v4}, Lcom/android/dreams/phototable/AlbumDataAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 72
    iget-object v4, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-virtual {v4, v0}, Lcom/android/dreams/phototable/AlbumDataAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    .line 73
    .local v1, "item":Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v1, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->account:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 75
    :cond_0
    iget-object v3, v1, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->account:Ljava/lang/String;

    .line 76
    add-int/lit8 v2, v2, 0x1

    .line 71
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    .end local v1    # "item":Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    :cond_2
    new-array v4, v2, [I

    iput-object v4, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->sections:[I

    .line 82
    const/4 v2, 0x0

    .line 83
    const-string v3, ""

    .line 85
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-virtual {v4}, Lcom/android/dreams/phototable/AlbumDataAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 86
    iget-object v4, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-virtual {v4, v0}, Lcom/android/dreams/phototable/AlbumDataAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    .line 87
    .restart local v1    # "item":Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v1, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->account:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 88
    :cond_3
    iget-object v3, v1, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->account:Ljava/lang/String;

    .line 89
    iget-object v4, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->sections:[I

    aput v0, v4, v2

    .line 90
    add-int/lit8 v2, v2, 0x1

    .line 85
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    .end local v1    # "item":Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    :cond_5
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->sections:[I

    array-length v4, v4

    if-ge v0, v4, :cond_6

    .line 95
    iget-object v4, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->sections:[I

    aget v5, v4, v0

    add-int/2addr v5, v0

    aput v5, v4, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 98
    :cond_6
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->onChanged()V

    .line 103
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-virtual {v0, p1}, Lcom/android/dreams/phototable/AlbumDataAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 169
    return-void
.end method

.method selectAll(Z)V
    .locals 1
    .param p1, "select"    # Z

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-virtual {v0, p1}, Lcom/android/dreams/phototable/AlbumDataAdapter;->selectAll(Z)V

    .line 61
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-virtual {v0, p1}, Lcom/android/dreams/phototable/AlbumDataAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 174
    return-void
.end method
