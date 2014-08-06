.class public Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;
.super Lcom/android/gallery3d/filtershow/editors/ParametricEditor;
.source "EditorUPoint.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/android/gallery3d/filtershow/controller/ParameterActionAndInt;


# instance fields
.field mEffectName:Ljava/lang/String;

.field mImageUPoint:Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;

.field mPopupMenu:Landroid/widget/PopupMenu;

.field private mSliderMode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 57
    const v0, 0x7f0a002a

    const v1, 0x7f040041

    const v2, 0x7f0a0107

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;-><init>(III)V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mEffectName:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mSliderMode:I

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->showPopupMenu(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mSliderMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;
    .param p1, "x1"    # Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->updateMenuItems(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    return-object v0
.end method

.method private getUPointRepresentation()Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    .line 210
    .local v0, "tmpRep":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    if-eqz v1, :cond_0

    .line 211
    check-cast v0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    .line 213
    .end local v0    # "tmpRep":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :goto_0
    return-object v0

    .restart local v0    # "tmpRep":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setUpPopupMenu(Landroid/widget/Button;)V
    .locals 4
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    .line 153
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 154
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f120013

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    .line 157
    .local v0, "rep":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;
    if-nez v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->updateMenuItems(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;)V

    .line 161
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->hackFixStrings(Landroid/view/Menu;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->setEffectName()V

    .line 163
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->updateText()V

    .line 165
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mPopupMenu:Landroid/widget/PopupMenu;

    new-instance v2, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint$2;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint$2;-><init>(Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    goto :goto_0
.end method

.method private showPopupMenu(Landroid/widget/LinearLayout;)V
    .locals 2
    .param p1, "accessoryViewList"    # Landroid/widget/LinearLayout;

    .prologue
    .line 141
    const v1, 0x7f0a00f4

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 142
    .local v0, "button":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mPopupMenu:Landroid/widget/PopupMenu;

    if-nez v1, :cond_1

    .line 147
    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->setUpPopupMenu(Landroid/widget/Button;)V

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0
.end method

.method private updateMenuItems(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;)V
    .locals 1
    .param p1, "rep"    # Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    .prologue
    .line 130
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->getNumberOfPoints()I

    move-result v0

    .line 131
    .local v0, "n":I
    return-void
.end method


# virtual methods
.method public calculateUserMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "effectName"    # Ljava/lang/String;
    .param p3, "parameterValue"    # Ljava/lang/Object;

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->getUPointRepresentation()Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    move-result-object v0

    .line 201
    .local v0, "rep":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;
    if-nez v0, :cond_0

    .line 202
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mEffectName:Ljava/lang/String;

    .line 205
    :goto_0
    return-object v2

    .line 204
    :cond_0
    iget v2, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mSliderMode:I

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->getParameter(I)I

    move-result v1

    .line 205
    .local v1, "val":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mEffectName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-lez v1, :cond_1

    const-string v2, " +"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, " "

    goto :goto_1
.end method

.method public createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frameLayout"    # Landroid/widget/FrameLayout;

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast v0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mImageUPoint:Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;

    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mImageUPoint:Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->setEditor(Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;)V

    .line 66
    return-void
.end method

.method public fireLeftAction()V
    .locals 2

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->getUPointRepresentation()Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    move-result-object v0

    .line 280
    .local v0, "rep":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;
    if-nez v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImageLoader()Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->addPoint(Landroid/graphics/Rect;)I

    .line 284
    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->updateMenuItems(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;)V

    .line 285
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->updateSeekBar(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;)V

    .line 287
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->commitLocalRepresentation()V

    .line 288
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public fireRightAction()V
    .locals 2

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->getUPointRepresentation()Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    move-result-object v0

    .line 299
    .local v0, "rep":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;
    if-nez v0, :cond_0

    .line 308
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->deleteCurrentPoint()V

    .line 304
    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->updateMenuItems(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;)V

    .line 305
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->updateSeekBar(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;)V

    .line 306
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->commitLocalRepresentation()V

    .line 307
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public getLeftIcon()I
    .locals 1

    .prologue
    .line 293
    const v0, 0x7f020104

    return v0
.end method

.method public getMaximum()I
    .locals 2

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->getUPointRepresentation()Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    move-result-object v0

    .line 219
    .local v0, "rep":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;
    if-nez v0, :cond_0

    .line 220
    const/4 v1, 0x0

    .line 222
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mSliderMode:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->getParameterMax(I)I

    move-result v1

    goto :goto_0
.end method

.method public getMinimum()I
    .locals 2

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->getUPointRepresentation()Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    move-result-object v0

    .line 228
    .local v0, "rep":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;
    if-nez v0, :cond_0

    .line 229
    const/4 v1, 0x0

    .line 231
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mSliderMode:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->getParameterMin(I)I

    move-result v1

    goto :goto_0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mEffectName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    const-string v0, "ParameterActionAndInt"

    return-object v0
.end method

.method public getRightIcon()I
    .locals 1

    .prologue
    .line 312
    const v0, 0x7f020105

    return v0
.end method

.method public getValue()I
    .locals 2

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->getUPointRepresentation()Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    move-result-object v0

    .line 242
    .local v0, "rep":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;
    if-nez v0, :cond_0

    .line 243
    const/4 v1, 0x0

    .line 245
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mSliderMode:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->getParameter(I)I

    move-result v1

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .param p1, "sbar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v2

    .line 95
    .local v2, "tmpRep":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    if-eqz v2, :cond_0

    instance-of v4, v2, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    if-eqz v4, :cond_0

    move-object v1, v2

    .line 96
    check-cast v1, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    .line 97
    .local v1, "rep":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;
    iget v4, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mSliderMode:I

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->getParameterMin(I)I

    move-result v0

    .line 98
    .local v0, "min":I
    add-int v3, p2, v0

    .line 99
    .local v3, "value":I
    iget v4, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mSliderMode:I

    invoke-virtual {v1, v4, v3}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->setParameter(II)V

    .line 100
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v4, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onNewValue(I)V

    .line 101
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 102
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->commitLocalRepresentation()V

    .line 104
    .end local v0    # "min":I
    .end local v1    # "rep":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;
    .end local v3    # "value":I
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "sbar"    # Landroid/widget/SeekBar;

    .prologue
    .line 108
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "sbar"    # Landroid/widget/SeekBar;

    .prologue
    .line 112
    return-void
.end method

.method public openUtilityPanel(Landroid/widget/LinearLayout;)V
    .locals 3
    .param p1, "accessoryViewList"    # Landroid/widget/LinearLayout;

    .prologue
    .line 116
    const v1, 0x7f0a00f4

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 117
    .local v0, "view":Landroid/widget/Button;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00dc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 118
    new-instance v1, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint$1;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint$1;-><init>(Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->setUpPopupMenu(Landroid/widget/Button;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->setEffectName()V

    .line 127
    return-void
.end method

.method public reflectCurrentFilter()V
    .locals 4

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->reflectCurrentFilter()V

    .line 79
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v2

    .line 80
    .local v2, "tmpRep":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 81
    check-cast v1, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    .line 82
    .local v1, "rep":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->showParameterValue()Z

    move-result v0

    .line 84
    .local v0, "f":Z
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mImageUPoint:Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->setRepresentation(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;)V

    .line 86
    .end local v0    # "f":Z
    .end local v1    # "rep":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;
    :cond_0
    return-void
.end method

.method public setController(Lcom/android/gallery3d/filtershow/controller/Control;)V
    .locals 0
    .param p1, "c"    # Lcom/android/gallery3d/filtershow/controller/Control;

    .prologue
    .line 275
    return-void
.end method

.method public setEffectName()V
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0a0229

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 136
    .local v0, "item":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mEffectName:Ljava/lang/String;

    .line 138
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->getUPointRepresentation()Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    move-result-object v0

    .line 256
    .local v0, "rep":Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;
    if-nez v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 259
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->mSliderMode:I

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->setParameter(II)V

    goto :goto_0
.end method

.method public updateSeekBar(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;)V
    .locals 1
    .param p1, "rep"    # Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/ParametricEditor;->mControl:Lcom/android/gallery3d/filtershow/controller/Control;

    invoke-interface {v0}, Lcom/android/gallery3d/filtershow/controller/Control;->updateUI()V

    .line 90
    return-void
.end method
