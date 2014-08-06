.class public Lcom/android/gallery3d/filtershow/editors/Editor;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/android/gallery3d/filtershow/editors/SwapButton$SwapButtonListener;


# static fields
.field public static SHOW_VALUE_INT:B

.field public static SHOW_VALUE_OFF:B

.field public static SHOW_VALUE_UNDEFINED:B


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private mButton:Landroid/widget/Button;

.field protected mContext:Landroid/content/Context;

.field mEditTitle:Landroid/widget/Button;

.field protected mFilterTitle:Landroid/widget/Button;

.field protected mFrameLayout:Landroid/widget/FrameLayout;

.field protected mID:I

.field protected mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

.field protected mLocalRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

.field protected mSeekBar:Landroid/widget/SeekBar;

.field protected mShowParameter:B

.field protected mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, -0x1

    sput-byte v0, Lcom/android/gallery3d/filtershow/editors/Editor;->SHOW_VALUE_UNDEFINED:B

    .line 59
    const/4 v0, 0x0

    sput-byte v0, Lcom/android/gallery3d/filtershow/editors/Editor;->SHOW_VALUE_OFF:B

    .line 60
    const/4 v0, 0x1

    sput-byte v0, Lcom/android/gallery3d/filtershow/editors/Editor;->SHOW_VALUE_INT:B

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "Editor"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->LOGTAG:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mLocalRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 56
    sget-byte v0, Lcom/android/gallery3d/filtershow/editors/Editor;->SHOW_VALUE_UNDEFINED:B

    iput-byte v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mShowParameter:B

    .line 75
    iput p1, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mID:I

    .line 76
    return-void
.end method

.method private findImageShow(Landroid/view/View;)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 165
    instance-of v5, p1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz v5, :cond_0

    .line 166
    check-cast p1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 181
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-object p1

    .line 168
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-nez v5, :cond_1

    move-object p1, v4

    .line 169
    goto :goto_0

    :cond_1
    move-object v3, p1

    .line 171
    check-cast v3, Landroid/view/ViewGroup;

    .line 172
    .local v3, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 173
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 174
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 175
    .local v2, "v":Landroid/view/View;
    instance-of v5, v2, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz v5, :cond_2

    .line 176
    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .end local v2    # "v":Landroid/view/View;
    move-object p1, v2

    goto :goto_0

    .line 177
    .restart local v2    # "v":Landroid/view/View;
    :cond_2
    instance-of v5, v2, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    .line 178
    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/editors/Editor;->findImageShow(Landroid/view/View;)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object p1

    goto :goto_0

    .line 173
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2    # "v":Landroid/view/View;
    :cond_4
    move-object p1, v4

    .line 181
    goto :goto_0
.end method

.method public static hackFixStrings(Landroid/view/Menu;)V
    .locals 4
    .param p0, "menu"    # Landroid/view/Menu;

    .prologue
    .line 63
    invoke-interface {p0}, Landroid/view/Menu;->size()I

    move-result v0

    .line 64
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 65
    invoke-interface {p0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 66
    .local v2, "item":Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v2    # "item":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method


# virtual methods
.method public calculateUserMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "effectName"    # Ljava/lang/String;
    .param p3, "parameterValue"    # Ljava/lang/Object;

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public commitLocalRepresentation()V
    .locals 2

    .prologue
    .line 215
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getPreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    .line 216
    .local v0, "preset":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/Editor;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->updateFilterRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    .line 217
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/Editor;->updateText()V

    .line 220
    :cond_0
    return-void
.end method

.method public createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frameLayout"    # Landroid/widget/FrameLayout;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mContext:Landroid/content/Context;

    .line 146
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mLocalRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 148
    return-void
.end method

.method public detach()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->unselect()V

    .line 296
    :cond_0
    return-void
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mID:I

    return v0
.end method

.method public getImageShow()Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    return-object v0
.end method

.method public getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 5

    .prologue
    .line 201
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mLocalRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    if-nez v3, :cond_0

    .line 202
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getPreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    .line 203
    .local v1, "preset":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getCurrentFilterRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    .line 204
    .local v0, "filterRepresentation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getFilterRepresentationCopyFrom(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mLocalRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 205
    iget-byte v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mShowParameter:B

    sget-byte v4, Lcom/android/gallery3d/filtershow/editors/Editor;->SHOW_VALUE_UNDEFINED:B

    if-ne v3, v4, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->showParameterValue()Z

    move-result v2

    .line 207
    .local v2, "show":Z
    if-eqz v2, :cond_1

    sget-byte v3, Lcom/android/gallery3d/filtershow/editors/Editor;->SHOW_VALUE_INT:B

    :goto_0
    iput-byte v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mShowParameter:B

    .line 211
    .end local v0    # "filterRepresentation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .end local v1    # "preset":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .end local v2    # "show":Z
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mLocalRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    return-object v3

    .line 207
    .restart local v0    # "filterRepresentation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .restart local v1    # "preset":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .restart local v2    # "show":Z
    :cond_1
    sget-byte v3, Lcom/android/gallery3d/filtershow/editors/Editor;->SHOW_VALUE_OFF:B

    goto :goto_0
.end method

.method public getTopLevelView()Landroid/view/View;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "sbar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 138
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 275
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 280
    return-void
.end method

.method public openUtilityPanel(Landroid/widget/LinearLayout;)V
    .locals 1
    .param p1, "mAccessoryViewList"    # Landroid/widget/LinearLayout;

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/editors/Editor;->setMenuIcon(Z)V

    .line 249
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->openUtilityPanel(Landroid/widget/LinearLayout;)V

    .line 252
    :cond_0
    return-void
.end method

.method public reflectCurrentFilter()V
    .locals 4

    .prologue
    .line 234
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mLocalRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 235
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/Editor;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    .line 236
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mFilterTitle:Landroid/widget/Button;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getTextId()I

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getTextId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mFilterTitle:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/Editor;->updateText()V

    .line 241
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V
    .locals 1
    .param p1, "imageLoader"    # Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 194
    return-void
.end method

.method protected setMenuIcon(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    const/4 v1, 0x0

    .line 255
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mEditTitle:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const v0, 0x7f0200a3

    :goto_0
    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/Button;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 257
    return-void

    :cond_0
    move v0, v1

    .line 255
    goto :goto_0
.end method

.method public setUpEditorUI(Landroid/view/View;Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 1
    .param p1, "actionButton"    # Landroid/view/View;
    .param p2, "editControl"    # Landroid/view/View;
    .param p3, "editTitle"    # Landroid/widget/Button;
    .param p4, "stateButton"    # Landroid/widget/Button;

    .prologue
    .line 92
    iput-object p3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mEditTitle:Landroid/widget/Button;

    .line 93
    iput-object p4, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mFilterTitle:Landroid/widget/Button;

    .line 94
    iput-object p3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mButton:Landroid/widget/Button;

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/editors/Editor;->setMenuIcon(Z)V

    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/Editor;->setUtilityPanelUI(Landroid/view/View;Landroid/view/View;)V

    .line 97
    return-void
.end method

.method public setUtilityPanelUI(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .param p1, "actionButton"    # Landroid/view/View;
    .param p2, "editControl"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 110
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 111
    .local v0, "context":Landroid/content/Context;
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 113
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f04003c

    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "editControl":Landroid/view/View;
    const/4 v4, 0x1

    invoke-virtual {v1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 115
    .local v2, "lp":Landroid/widget/LinearLayout;
    const v3, 0x7f0a00f1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    .line 116
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/Editor;->showsSeekBar()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 120
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 125
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mButton:Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/Editor;->showsPopupIndicator()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mButton:Landroid/widget/Button;

    const v4, 0x7f0200a3

    invoke-virtual {v3, v5, v5, v4, v5}, Landroid/widget/Button;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 133
    :cond_0
    :goto_1
    return-void

    .line 122
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0

    .line 130
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mButton:Landroid/widget/Button;

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    return-void
.end method

.method public showsPopupIndicator()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public showsSeekBar()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public swapLeft(Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 285
    return-void
.end method

.method public swapRight(Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 290
    return-void
.end method

.method protected unpack(II)V
    .locals 4
    .param p1, "viewid"    # I
    .param p2, "layoutid"    # I

    .prologue
    .line 152
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    .line 154
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 157
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mFrameLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    .line 158
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/editors/Editor;->findImageShow(Landroid/view/View;)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 162
    return-void
.end method

.method protected updateText()V
    .locals 4

    .prologue
    .line 223
    const-string v0, ""

    .line 224
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mLocalRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mLocalRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getTextId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mContext:Landroid/content/Context;

    const-string v3, ""

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/gallery3d/filtershow/editors/Editor;->calculateUserMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 228
    return-void
.end method

.method public useUtilityPanel()Z
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x1

    return v0
.end method
