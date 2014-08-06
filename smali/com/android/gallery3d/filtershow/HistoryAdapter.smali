.class public Lcom/android/gallery3d/filtershow/HistoryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/gallery3d/filtershow/presets/ImagePreset;",
        ">;"
    }
.end annotation


# instance fields
.field private mBorders:Ljava/lang/String;

.field private mCrop:Ljava/lang/String;

.field private mCurrentPresetPosition:I

.field private mMirror:Ljava/lang/String;

.field private mOriginalBitmap:Landroid/graphics/Bitmap;

.field private mRedoMenuItem:Landroid/view/MenuItem;

.field private mResetMenuItem:Landroid/view/MenuItem;

.field private mRotate:Ljava/lang/String;

.field private mStraighten:Ljava/lang/String;

.field private mUndoMenuItem:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 38
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 39
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mBorders:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCrop:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mRotate:Ljava/lang/String;

    .line 42
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mStraighten:Ljava/lang/String;

    .line 43
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mMirror:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mUndoMenuItem:Landroid/view/MenuItem;

    .line 45
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mRedoMenuItem:Landroid/view/MenuItem;

    .line 46
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mResetMenuItem:Landroid/view/MenuItem;

    .line 48
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mOriginalBitmap:Landroid/graphics/Bitmap;

    move-object v0, p1

    .line 52
    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 53
    .local v0, "activity":Lcom/android/gallery3d/filtershow/FilterShowActivity;
    const v1, 0x7f0b015a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mBorders:Ljava/lang/String;

    .line 54
    const v1, 0x7f0b0185

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCrop:Ljava/lang/String;

    .line 55
    const v1, 0x7f0b0186

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mRotate:Ljava/lang/String;

    .line 56
    const v1, 0x7f0b0184

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mStraighten:Ljava/lang/String;

    .line 57
    const v1, 0x7f0b0187

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mMirror:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private setEnabled(Landroid/view/MenuItem;Z)V
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "enabled"    # Z

    .prologue
    .line 101
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 102
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 103
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 104
    if-eqz p2, :cond_1

    const/16 v1, 0xff

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 106
    :cond_0
    return-void

    .line 104
    :cond_1
    const/16 v1, 0x50

    goto :goto_0
.end method


# virtual methods
.method public addHistoryItem(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V
    .locals 1
    .param p1, "preset"    # Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->insert(Lcom/android/gallery3d/filtershow/presets/ImagePreset;I)V

    .line 137
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->updateMenuItems()V

    .line 138
    return-void
.end method

.method public canRedo()Z
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canReset()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 68
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getCount()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 71
    :cond_0
    return v0
.end method

.method public canUndo()Z
    .locals 2

    .prologue
    .line 75
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getLast()Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 182
    move-object v5, p2

    .line 183
    .local v5, "view":Landroid/view/View;
    if-nez v5, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 186
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f04003a

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 189
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 190
    .local v2, "item":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    if-eqz v2, :cond_3

    .line 191
    const v6, 0x7f0a00fb

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 192
    .local v3, "itemView":Landroid/widget/TextView;
    if-eqz v3, :cond_1

    .line 193
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_1
    const v6, 0x7f0a00fa

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 196
    .local v4, "preview":Landroid/widget/ImageView;
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getPreviewImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 197
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p1, v6, :cond_2

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mOriginalBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    .line 198
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 200
    :cond_2
    if-eqz v0, :cond_4

    .line 201
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 205
    :goto_0
    iget v6, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    if-ne p1, v6, :cond_5

    .line 206
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 212
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v3    # "itemView":Landroid/widget/TextView;
    .end local v4    # "preview":Landroid/widget/ImageView;
    :cond_3
    :goto_1
    return-object v5

    .line 203
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v3    # "itemView":Landroid/widget/TextView;
    .restart local v4    # "preview":Landroid/widget/ImageView;
    :cond_4
    const v6, 0x106000d

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 208
    :cond_5
    const v6, 0x7f09005f

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public insert(Lcom/android/gallery3d/filtershow/presets/ImagePreset;I)V
    .locals 3
    .param p1, "preset"    # Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .param p2, "position"    # I

    .prologue
    .line 142
    iget v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    if-eqz v2, :cond_2

    .line 144
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 145
    .local v1, "oldItems":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/gallery3d/filtershow/presets/ImagePreset;>;"
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->clear()V

    .line 149
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 150
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->add(Ljava/lang/Object;)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    :cond_1
    iput p2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 153
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->notifyDataSetChanged()V

    .line 155
    .end local v0    # "i":I
    .end local v1    # "oldItems":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/gallery3d/filtershow/presets/ImagePreset;>;"
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 156
    iput p2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 157
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->notifyDataSetChanged()V

    .line 158
    return-void
.end method

.method public bridge synthetic insert(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I

    .prologue
    .line 36
    check-cast p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->insert(Lcom/android/gallery3d/filtershow/presets/ImagePreset;I)V

    return-void
.end method

.method public redo()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 162
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    if-gez v0, :cond_0

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->notifyDataSetChanged()V

    .line 166
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->updateMenuItems()V

    .line 167
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 119
    .local v0, "first":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->clear()V

    .line 120
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->addHistoryItem(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->updateMenuItems()V

    goto :goto_0
.end method

.method public setCurrentPreset(I)V
    .locals 0
    .param p1, "n"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 110
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->updateMenuItems()V

    .line 111
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->notifyDataSetChanged()V

    .line 112
    return-void
.end method

.method public setMenuItems(Landroid/view/MenuItem;Landroid/view/MenuItem;Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "undoItem"    # Landroid/view/MenuItem;
    .param p2, "redoItem"    # Landroid/view/MenuItem;
    .param p3, "resetItem"    # Landroid/view/MenuItem;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mUndoMenuItem:Landroid/view/MenuItem;

    .line 62
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mRedoMenuItem:Landroid/view/MenuItem;

    .line 63
    iput-object p3, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mResetMenuItem:Landroid/view/MenuItem;

    .line 64
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->updateMenuItems()V

    .line 65
    return-void
.end method

.method public undo()I
    .locals 2

    .prologue
    .line 171
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 172
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->notifyDataSetChanged()V

    .line 176
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->updateMenuItems()V

    .line 177
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    return v0
.end method

.method public updateMenuItems()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mUndoMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mUndoMenuItem:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->canUndo()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->setEnabled(Landroid/view/MenuItem;Z)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mRedoMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mRedoMenuItem:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->canRedo()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->setEnabled(Landroid/view/MenuItem;Z)V

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mResetMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mResetMenuItem:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->canReset()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->setEnabled(Landroid/view/MenuItem;Z)V

    .line 98
    :cond_2
    return-void
.end method
