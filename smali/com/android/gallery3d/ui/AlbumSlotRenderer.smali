.class public Lcom/android/gallery3d/ui/AlbumSlotRenderer;
.super Lcom/android/gallery3d/ui/AbstractSlotRenderer;
.source "AlbumSlotRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/AlbumSlotRenderer$1;,
        Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;,
        Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mAnimatePressedUp:Z

.field private mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

.field private mHighlightItemPath:Lcom/android/gallery3d/data/Path;

.field private mInSelectionMode:Z

.field private final mPlaceholderColor:I

.field private mPressedIndex:I

.field private final mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mSlotFilter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

.field private final mSlotView:Lcom/android/gallery3d/ui/SlotView;

.field private final mWaitLoadingTexture:Lcom/android/gallery3d/glrenderer/ColorTexture;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/SelectionManager;I)V
    .locals 3
    .param p1, "activity"    # Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .param p2, "slotView"    # Lcom/android/gallery3d/ui/SlotView;
    .param p3, "selectionManager"    # Lcom/android/gallery3d/ui/SelectionManager;
    .param p4, "placeholderColor"    # I

    .prologue
    const/4 v2, 0x1

    .line 55
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    .line 56
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 57
    iput-object p2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    .line 58
    iput-object p3, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 59
    iput p4, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPlaceholderColor:I

    .line 61
    new-instance v0, Lcom/android/gallery3d/glrenderer/ColorTexture;

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPlaceholderColor:I

    invoke-direct {v0, v1}, Lcom/android/gallery3d/glrenderer/ColorTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/glrenderer/ColorTexture;

    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/glrenderer/ColorTexture;

    invoke-virtual {v0, v2, v2}, Lcom/android/gallery3d/glrenderer/ColorTexture;->setSize(II)V

    .line 63
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/AlbumSlotRenderer;)Lcom/android/gallery3d/ui/SlotView;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    return-object v0
.end method

.method private static checkTexture(Lcom/android/gallery3d/glrenderer/Texture;)Lcom/android/gallery3d/glrenderer/Texture;
    .locals 1
    .param p0, "texture"    # Lcom/android/gallery3d/glrenderer/Texture;

    .prologue
    .line 97
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

.method private renderOverlay(Lcom/android/gallery3d/glrenderer/GLCanvas;ILcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;II)I
    .locals 3
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "index"    # I
    .param p3, "entry"    # Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "renderRequestFlags":I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    if-ne v1, p2, :cond_2

    .line 143
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    if-eqz v1, :cond_1

    .line 144
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->drawPressedUpFrame(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V

    .line 145
    or-int/lit8 v0, v0, 0x2

    .line 146
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->isPressedUpFrameFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    .line 148
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 151
    :cond_1
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->drawPressedFrame(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 153
    :cond_2
    iget-object v1, p3, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/android/gallery3d/data/Path;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    iget-object v2, p3, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/android/gallery3d/data/Path;

    if-ne v1, v2, :cond_3

    .line 154
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->drawSelectedFrame(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 155
    :cond_3
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mInSelectionMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v2, p3, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/android/gallery3d/data/Path;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->drawSelectedFrame(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0
.end method


# virtual methods
.method public onSlotSizeChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 196
    return-void
.end method

.method public onVisibleRangeChanged(II)V
    .locals 1
    .param p1, "visibleStart"    # I
    .param p2, "visibleEnd"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setActiveWindow(II)V

    .line 191
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->pause()V

    .line 179
    return-void
.end method

.method public prepareDrawing()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mInSelectionMode:Z

    .line 184
    return-void
.end method

.method public renderSlot(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)I
    .locals 10
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "index"    # I
    .param p3, "pass"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 105
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotFilter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotFilter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    invoke-interface {v1, p2}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;->acceptSlot(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v9, v0

    .line 136
    :goto_0
    return v9

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v1, p2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->get(I)Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v6

    .line 109
    .local v6, "entry":Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    const/4 v9, 0x0

    .line 111
    .local v9, "renderRequestFlags":I
    iget-object v1, v6, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/android/gallery3d/glrenderer/Texture;

    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->checkTexture(Lcom/android/gallery3d/glrenderer/Texture;)Lcom/android/gallery3d/glrenderer/Texture;

    move-result-object v2

    .line 112
    .local v2, "content":Lcom/android/gallery3d/glrenderer/Texture;
    if-nez v2, :cond_5

    .line 113
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/glrenderer/ColorTexture;

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    .line 120
    :cond_1
    :goto_1
    iget v5, v6, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rotation:I

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->drawContent(Lcom/android/gallery3d/glrenderer/GLCanvas;Lcom/android/gallery3d/glrenderer/Texture;III)V

    .line 121
    instance-of v0, v2, Lcom/android/gallery3d/glrenderer/FadeInTexture;

    if-eqz v0, :cond_2

    check-cast v2, Lcom/android/gallery3d/glrenderer/FadeInTexture;

    .end local v2    # "content":Lcom/android/gallery3d/glrenderer/Texture;
    invoke-virtual {v2}, Lcom/android/gallery3d/glrenderer/FadeInTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    or-int/lit8 v9, v9, 0x2

    .line 126
    :cond_2
    iget v0, v6, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 127
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->drawVideoOverlay(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V

    .line 130
    :cond_3
    iget-boolean v0, v6, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isPanorama:Z

    if-eqz v0, :cond_4

    .line 131
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->drawPanoramaIcon(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V

    :cond_4
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v7, p4

    move v8, p5

    .line 134
    invoke-direct/range {v3 .. v8}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->renderOverlay(Lcom/android/gallery3d/glrenderer/GLCanvas;ILcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;II)I

    move-result v0

    or-int/2addr v9, v0

    .line 136
    goto :goto_0

    .line 115
    .restart local v2    # "content":Lcom/android/gallery3d/glrenderer/Texture;
    :cond_5
    iget-boolean v1, v6, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    if-eqz v1, :cond_1

    .line 116
    iput-boolean v0, v6, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    .line 117
    new-instance v2, Lcom/android/gallery3d/glrenderer/FadeInTexture;

    .end local v2    # "content":Lcom/android/gallery3d/glrenderer/Texture;
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPlaceholderColor:I

    iget-object v1, v6, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/glrenderer/TiledTexture;

    invoke-direct {v2, v0, v1}, Lcom/android/gallery3d/glrenderer/FadeInTexture;-><init>(ILcom/android/gallery3d/glrenderer/TiledTexture;)V

    .line 118
    .restart local v2    # "content":Lcom/android/gallery3d/glrenderer/Texture;
    iput-object v2, v6, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/android/gallery3d/glrenderer/Texture;

    goto :goto_1
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->resume()V

    .line 175
    return-void
.end method

.method public setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .param p1, "path"    # Lcom/android/gallery3d/data/Path;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v0, p1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public setModel(Lcom/android/gallery3d/app/AlbumDataLoader;)V
    .locals 4
    .param p1, "model"    # Lcom/android/gallery3d/app/AlbumDataLoader;

    .prologue
    const/4 v3, 0x0

    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setListener(Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;)V

    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setSlotCount(I)Z

    .line 87
    iput-object v3, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    .line 89
    :cond_0
    if-eqz p1, :cond_1

    .line 90
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/16 v2, 0x60

    invoke-direct {v0, v1, p1, v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/app/AlbumDataLoader;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    new-instance v1, Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;

    invoke-direct {v1, p0, v3}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;-><init>(Lcom/android/gallery3d/ui/AlbumSlotRenderer;Lcom/android/gallery3d/ui/AlbumSlotRenderer$1;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setListener(Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;)V

    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setSlotCount(I)Z

    .line 94
    :cond_1
    return-void
.end method

.method public setPressedIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 66
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    if-ne v0, p1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public setPressedUp()V
    .locals 2

    .prologue
    .line 72
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public setSlotFilter(Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V
    .locals 0
    .param p1, "slotFilter"    # Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotFilter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    .line 200
    return-void
.end method
