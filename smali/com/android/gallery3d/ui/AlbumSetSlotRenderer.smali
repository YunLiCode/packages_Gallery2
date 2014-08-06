.class public Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;
.super Lcom/android/gallery3d/ui/AbstractSlotRenderer;
.source "AlbumSetSlotRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$1;,
        Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;,
        Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mAnimatePressedUp:Z

.field private final mCameraOverlay:Lcom/android/gallery3d/glrenderer/ResourceTexture;

.field protected mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

.field private mHighlightItemPath:Lcom/android/gallery3d/data/Path;

.field private mInSelectionMode:Z

.field protected final mLabelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

.field private final mPlaceholderColor:I

.field private mPressedIndex:I

.field private final mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mSlotView:Lcom/android/gallery3d/ui/SlotView;

.field private final mWaitLoadingTexture:Lcom/android/gallery3d/glrenderer/ColorTexture;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;I)V
    .locals 3
    .param p1, "activity"    # Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .param p2, "selectionManager"    # Lcom/android/gallery3d/ui/SelectionManager;
    .param p3, "slotView"    # Lcom/android/gallery3d/ui/SlotView;
    .param p4, "labelSpec"    # Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;
    .param p5, "placeholderColor"    # I

    .prologue
    const/4 v2, 0x1

    .line 71
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    .line 72
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 73
    iput-object p2, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 74
    iput-object p3, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    .line 75
    iput-object p4, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    .line 76
    iput p5, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPlaceholderColor:I

    .line 78
    new-instance v0, Lcom/android/gallery3d/glrenderer/ColorTexture;

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPlaceholderColor:I

    invoke-direct {v0, v1}, Lcom/android/gallery3d/glrenderer/ColorTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/glrenderer/ColorTexture;

    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/glrenderer/ColorTexture;

    invoke-virtual {v0, v2, v2}, Lcom/android/gallery3d/glrenderer/ColorTexture;->setSize(II)V

    .line 80
    new-instance v0, Lcom/android/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f0200d6

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mCameraOverlay:Lcom/android/gallery3d/glrenderer/ResourceTexture;

    .line 82
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;)Lcom/android/gallery3d/ui/SlotView;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    return-object v0
.end method

.method private static checkContentTexture(Lcom/android/gallery3d/glrenderer/Texture;)Lcom/android/gallery3d/glrenderer/Texture;
    .locals 1
    .param p0, "texture"    # Lcom/android/gallery3d/glrenderer/Texture;

    .prologue
    .line 124
    instance-of v0, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/TiledTexture;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .end local p0    # "texture":Lcom/android/gallery3d/glrenderer/Texture;
    :cond_0
    return-object p0
.end method

.method private static checkLabelTexture(Lcom/android/gallery3d/glrenderer/Texture;)Lcom/android/gallery3d/glrenderer/Texture;
    .locals 1
    .param p0, "texture"    # Lcom/android/gallery3d/glrenderer/Texture;

    .prologue
    .line 117
    instance-of v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/gallery3d/glrenderer/UploadedTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->isUploading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .end local p0    # "texture":Lcom/android/gallery3d/glrenderer/Texture;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public onSlotSizeChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->onSlotSizeChanged(II)V

    .line 241
    :cond_0
    return-void
.end method

.method public onVisibleRangeChanged(II)V
    .locals 1
    .param p1, "visibleStart"    # I
    .param p2, "visibleEnd"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->setActiveWindow(II)V

    .line 234
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->pause()V

    .line 223
    return-void
.end method

.method public prepareDrawing()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z

    .line 206
    return-void
.end method

.method protected renderContent(Lcom/android/gallery3d/glrenderer/GLCanvas;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I
    .locals 7
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "entry"    # Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 170
    const/4 v6, 0x0

    .line 172
    .local v6, "renderRequestFlags":I
    iget-object v0, p2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/android/gallery3d/glrenderer/Texture;

    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->checkContentTexture(Lcom/android/gallery3d/glrenderer/Texture;)Lcom/android/gallery3d/glrenderer/Texture;

    move-result-object v2

    .line 173
    .local v2, "content":Lcom/android/gallery3d/glrenderer/Texture;
    if-nez v2, :cond_2

    .line 174
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/glrenderer/ColorTexture;

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isWaitLoadingDisplayed:Z

    .line 181
    :cond_0
    :goto_0
    iget v5, p2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->rotation:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawContent(Lcom/android/gallery3d/glrenderer/GLCanvas;Lcom/android/gallery3d/glrenderer/Texture;III)V

    .line 182
    instance-of v0, v2, Lcom/android/gallery3d/glrenderer/FadeInTexture;

    if-eqz v0, :cond_1

    check-cast v2, Lcom/android/gallery3d/glrenderer/FadeInTexture;

    .end local v2    # "content":Lcom/android/gallery3d/glrenderer/Texture;
    invoke-virtual {v2}, Lcom/android/gallery3d/glrenderer/FadeInTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    or-int/lit8 v6, v6, 0x2

    .line 187
    :cond_1
    return v6

    .line 176
    .restart local v2    # "content":Lcom/android/gallery3d/glrenderer/Texture;
    :cond_2
    iget-boolean v0, p2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isWaitLoadingDisplayed:Z

    if-eqz v0, :cond_0

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isWaitLoadingDisplayed:Z

    .line 178
    new-instance v2, Lcom/android/gallery3d/glrenderer/FadeInTexture;

    .end local v2    # "content":Lcom/android/gallery3d/glrenderer/Texture;
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPlaceholderColor:I

    iget-object v1, p2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/android/gallery3d/glrenderer/TiledTexture;

    invoke-direct {v2, v0, v1}, Lcom/android/gallery3d/glrenderer/FadeInTexture;-><init>(ILcom/android/gallery3d/glrenderer/TiledTexture;)V

    .line 179
    .restart local v2    # "content":Lcom/android/gallery3d/glrenderer/Texture;
    iput-object v2, p2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/android/gallery3d/glrenderer/Texture;

    goto :goto_0
.end method

.method protected renderLabel(Lcom/android/gallery3d/glrenderer/GLCanvas;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I
    .locals 7
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "entry"    # Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 192
    iget-object v1, p2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/glrenderer/BitmapTexture;

    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->checkLabelTexture(Lcom/android/gallery3d/glrenderer/Texture;)Lcom/android/gallery3d/glrenderer/Texture;

    move-result-object v0

    .line 193
    .local v0, "content":Lcom/android/gallery3d/glrenderer/Texture;
    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/glrenderer/ColorTexture;

    .line 196
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->getBorderSize()I

    move-result v6

    .line 197
    .local v6, "b":I
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    iget v5, v1, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    .line 198
    .local v5, "h":I
    neg-int v2, v6

    sub-int v1, p4, v5

    add-int v3, v1, v6

    add-int v1, p3, v6

    add-int v4, v1, v6

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/Texture;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 200
    const/4 v1, 0x0

    return v1
.end method

.method protected renderOverlay(Lcom/android/gallery3d/glrenderer/GLCanvas;ILcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I
    .locals 8
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "index"    # I
    .param p3, "entry"    # Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 142
    const/4 v6, 0x0

    .line 143
    .local v6, "renderRequestFlags":I
    iget-object v0, p3, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->isCameraRoll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    iget v0, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    sub-int v7, p5, v0

    .line 145
    .local v7, "uncoveredHeight":I
    div-int/lit8 v4, v7, 0x2

    .line 146
    .local v4, "dim":I
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mCameraOverlay:Lcom/android/gallery3d/glrenderer/ResourceTexture;

    sub-int v1, p4, v4

    div-int/lit8 v2, v1, 0x2

    sub-int v1, v7, v4

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 149
    .end local v4    # "dim":I
    .end local v7    # "uncoveredHeight":I
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    if-ne v0, p2, :cond_3

    .line 150
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAnimatePressedUp:Z

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawPressedUpFrame(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V

    .line 152
    or-int/lit8 v6, v6, 0x2

    .line 153
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->isPressedUpFrameFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAnimatePressedUp:Z

    .line 155
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    .line 165
    :cond_1
    :goto_0
    return v6

    .line 158
    :cond_2
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawPressedFrame(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    iget-object v1, p3, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/android/gallery3d/data/Path;

    if-ne v0, v1, :cond_4

    .line 161
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawSelectedFrame(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 162
    :cond_4
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p3, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/android/gallery3d/data/Path;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawSelectedFrame(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0
.end method

.method public renderSlot(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)I
    .locals 7
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "index"    # I
    .param p3, "pass"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->get(I)Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v3

    .line 133
    .local v3, "entry":Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    const/4 v6, 0x0

    .line 134
    .local v6, "renderRequestFlags":I
    invoke-virtual {p0, p1, v3, p4, p5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->renderContent(Lcom/android/gallery3d/glrenderer/GLCanvas;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I

    move-result v0

    or-int/2addr v6, v0

    .line 135
    invoke-virtual {p0, p1, v3, p4, p5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->renderLabel(Lcom/android/gallery3d/glrenderer/GLCanvas;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I

    move-result v0

    or-int/2addr v6, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    .line 136
    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->renderOverlay(Lcom/android/gallery3d/glrenderer/GLCanvas;ILcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I

    move-result v0

    or-int/2addr v6, v0

    .line 137
    return v6
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->resume()V

    .line 227
    return-void
.end method

.method public setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .param p1, "path"    # Lcom/android/gallery3d/data/Path;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v0, p1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public setModel(Lcom/android/gallery3d/app/AlbumSetDataLoader;)V
    .locals 5
    .param p1, "model"    # Lcom/android/gallery3d/app/AlbumSetDataLoader;

    .prologue
    const/4 v4, 0x0

    .line 103
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->setListener(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;)V

    .line 105
    iput-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setSlotCount(I)Z

    .line 108
    :cond_0
    if-eqz p1, :cond_1

    .line 109
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const/16 v3, 0x60

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/app/AlbumSetDataLoader;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    new-instance v1, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;

    invoke-direct {v1, p0, v4}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;-><init>(Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$1;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->setListener(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;)V

    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setSlotCount(I)Z

    .line 114
    :cond_1
    return-void
.end method

.method public setPressedIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 85
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    if-ne v0, p1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public setPressedUp()V
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAnimatePressedUp:Z

    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method
