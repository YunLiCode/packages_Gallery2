.class public Lcom/android/gallery3d/ui/SelectionManager;
.super Ljava/lang/Object;
.source "SelectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;
    }
.end annotation


# instance fields
.field private mAutoLeave:Z

.field private mClickedSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mDataManager:Lcom/android/gallery3d/data/DataManager;

.field private mInSelectionMode:Z

.field private mInverseSelection:Z

.field private mIsAlbumSet:Z

.field private mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

.field private mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

.field private mTotal:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Z)V
    .locals 1
    .param p1, "activity"    # Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .param p2, "isAlbumSet"    # Z

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mAutoLeave:Z

    .line 53
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    .line 55
    iput-boolean p2, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIsAlbumSet:Z

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I

    .line 57
    return-void
.end method

.method private static expandMediaSet(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet;I)Z
    .locals 12
    .param p1, "set"    # Lcom/android/gallery3d/data/MediaSet;
    .param p2, "maxSelection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;",
            "Lcom/android/gallery3d/data/MediaSet;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    const/4 v9, 0x0

    .line 150
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v7

    .line 151
    .local v7, "subCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v7, :cond_2

    .line 152
    invoke-virtual {p1, v2}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v10

    invoke-static {p0, v10, p2}, Lcom/android/gallery3d/ui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet;I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 174
    :cond_0
    :goto_1
    return v9

    .line 151
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v8

    .line 157
    .local v8, "total":I
    const/16 v0, 0x32

    .line 158
    .local v0, "batch":I
    const/4 v4, 0x0

    .line 160
    .local v4, "index":I
    :goto_2
    if-ge v4, v8, :cond_6

    .line 161
    add-int v10, v4, v0

    if-ge v10, v8, :cond_4

    move v1, v0

    .line 164
    .local v1, "count":I
    :goto_3
    invoke-virtual {p1, v4, v1}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    .line 165
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int v11, p2, v11

    if-gt v10, v11, :cond_0

    .line 169
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaItem;

    .line 170
    .local v5, "item":Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 161
    .end local v1    # "count":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "item":Lcom/android/gallery3d/data/MediaItem;
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :cond_4
    sub-int v1, v8, v4

    goto :goto_3

    .line 172
    .restart local v1    # "count":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :cond_5
    add-int/2addr v4, v0

    .line 173
    goto :goto_2

    .line 174
    .end local v1    # "count":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :cond_6
    const/4 v9, 0x1

    goto :goto_1
.end method

.method private getTotalCount()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 118
    :goto_0
    return v0

    .line 113
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I

    if-gez v0, :cond_1

    .line 114
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIsAlbumSet:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I

    .line 118
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I

    goto :goto_0

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public deSelectAll()V
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 80
    return-void
.end method

.method public enterSelectionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 91
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    goto :goto_0
.end method

.method public getSelected(Z)Ljava/util/ArrayList;
    .locals 1
    .param p1, "expandSet"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(ZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSelected(ZI)Ljava/util/ArrayList;
    .locals 13
    .param p1, "expandSet"    # Z
    .param p2, "maxSelection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 182
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v7, "selected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    iget-boolean v11, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIsAlbumSet:Z

    if-eqz v11, :cond_6

    .line 184
    iget-boolean v11, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v11, :cond_3

    .line 185
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v9

    .line 186
    .local v9, "total":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v9, :cond_0

    .line 187
    iget-object v11, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v11, v1}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v8

    .line 188
    .local v8, "set":Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    .line 189
    .local v3, "id":Lcom/android/gallery3d/data/Path;
    iget-object v11, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v11, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 190
    if-eqz p1, :cond_1

    .line 191
    invoke-static {v7, v8, p2}, Lcom/android/gallery3d/ui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet;I)Z

    move-result v11

    if-nez v11, :cond_2

    move-object v7, v10

    .line 244
    .end local v1    # "i":I
    .end local v3    # "id":Lcom/android/gallery3d/data/Path;
    .end local v7    # "selected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v8    # "set":Lcom/android/gallery3d/data/MediaSet;
    .end local v9    # "total":I
    :cond_0
    :goto_1
    return-object v7

    .line 195
    .restart local v1    # "i":I
    .restart local v3    # "id":Lcom/android/gallery3d/data/Path;
    .restart local v7    # "selected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .restart local v8    # "set":Lcom/android/gallery3d/data/MediaSet;
    .restart local v9    # "total":I
    :cond_1
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-le v11, p2, :cond_2

    move-object v7, v10

    .line 197
    goto :goto_1

    .line 186
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "i":I
    .end local v3    # "id":Lcom/android/gallery3d/data/Path;
    .end local v8    # "set":Lcom/android/gallery3d/data/MediaSet;
    .end local v9    # "total":I
    :cond_3
    iget-object v11, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/Path;

    .line 204
    .restart local v3    # "id":Lcom/android/gallery3d/data/Path;
    if-eqz p1, :cond_5

    .line 205
    iget-object v11, p0, Lcom/android/gallery3d/ui/SelectionManager;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-virtual {v11, v3}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v11

    invoke-static {v7, v11, p2}, Lcom/android/gallery3d/ui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet;I)Z

    move-result v11

    if-nez v11, :cond_4

    move-object v7, v10

    .line 207
    goto :goto_1

    .line 210
    :cond_5
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-le v11, p2, :cond_4

    move-object v7, v10

    .line 212
    goto :goto_1

    .line 218
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":Lcom/android/gallery3d/data/Path;
    :cond_6
    iget-boolean v11, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v11, :cond_9

    .line 219
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v9

    .line 220
    .restart local v9    # "total":I
    const/4 v4, 0x0

    .line 221
    .local v4, "index":I
    :goto_2
    if-ge v4, v9, :cond_0

    .line 222
    sub-int v11, v9, v4

    const/16 v12, 0x1f4

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 223
    .local v0, "count":I
    iget-object v11, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v11, v4, v0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    .line 224
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaItem;

    .line 225
    .local v5, "item":Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    .line 226
    .restart local v3    # "id":Lcom/android/gallery3d/data/Path;
    iget-object v11, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v11, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 227
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-le v11, p2, :cond_7

    move-object v7, v10

    .line 229
    goto :goto_1

    .line 233
    .end local v3    # "id":Lcom/android/gallery3d/data/Path;
    .end local v5    # "item":Lcom/android/gallery3d/data/MediaItem;
    :cond_8
    add-int/2addr v4, v0

    .line 234
    goto :goto_2

    .line 236
    .end local v0    # "count":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "index":I
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    .end local v9    # "total":I
    :cond_9
    iget-object v11, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/Path;

    .line 237
    .restart local v3    # "id":Lcom/android/gallery3d/data/Path;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-le v11, p2, :cond_a

    move-object v7, v10

    .line 239
    goto/16 :goto_1
.end method

.method public getSelectedCount()I
    .locals 2

    .prologue
    .line 122
    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    .line 123
    .local v0, "count":I
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v1, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v1

    sub-int v0, v1, v0

    .line 126
    :cond_0
    return v0
.end method

.method public inSelectAllMode()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    return v0
.end method

.method public inSelectionMode()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    return v0
.end method

.method public isItemSelected(Lcom/android/gallery3d/data/Path;)Z
    .locals 2
    .param p1, "itemId"    # Lcom/android/gallery3d/data/Path;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public leaveSelectionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    if-nez v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    .line 101
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 103
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    goto :goto_0
.end method

.method public selectAll()V
    .locals 2

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 72
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    .line 74
    :cond_0
    return-void
.end method

.method public setAutoLeaveSelectionMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mAutoLeave:Z

    .line 63
    return-void
.end method

.method public setSelectionListener(Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    .line 67
    return-void
.end method

.method public setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V
    .locals 1
    .param p1, "set"    # Lcom/android/gallery3d/data/MediaSet;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 249
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I

    .line 250
    return-void
.end method

.method public toggle(Lcom/android/gallery3d/data/Path;)V
    .locals 3
    .param p1, "path"    # Lcom/android/gallery3d/data/Path;

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 131
    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 138
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 139
    .local v0, "count":I
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->selectAll()V

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/android/gallery3d/data/Path;)Z

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionChange(Lcom/android/gallery3d/data/Path;Z)V

    .line 144
    :cond_1
    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mAutoLeave:Z

    if-eqz v1, :cond_2

    .line 145
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 147
    :cond_2
    return-void

    .line 133
    .end local v0    # "count":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    .line 134
    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
