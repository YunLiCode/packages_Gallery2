.class public Lcom/android/gallery3d/filtershow/editors/EditorDraw;
.super Lcom/android/gallery3d/filtershow/editors/Editor;
.source "EditorDraw.java"


# instance fields
.field public mImageDraw:Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f0a0052

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/Editor;-><init>(I)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/editors/EditorDraw;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/editors/EditorDraw;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/editors/EditorDraw;->showPopupMenu(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private showPopupMenu(Landroid/widget/LinearLayout;)V
    .locals 5
    .param p1, "accessoryViewList"    # Landroid/widget/LinearLayout;

    .prologue
    .line 87
    const v2, 0x7f0a00f4

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 89
    .local v0, "button":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 92
    :cond_0
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 93
    .local v1, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f12000c

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 94
    new-instance v2, Lcom/android/gallery3d/filtershow/editors/EditorDraw$2;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/filtershow/editors/EditorDraw$2;-><init>(Lcom/android/gallery3d/filtershow/editors/EditorDraw;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 121
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0
.end method


# virtual methods
.method public createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frameLayout"    # Landroid/widget/FrameLayout;

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/Editor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 52
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorDraw;->mImageDraw:Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorDraw;->mImageDraw:Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->setEditor(Lcom/android/gallery3d/filtershow/editors/EditorDraw;)V

    .line 55
    return-void
.end method

.method public openUtilityPanel(Landroid/widget/LinearLayout;)V
    .locals 3
    .param p1, "accessoryViewList"    # Landroid/widget/LinearLayout;

    .prologue
    .line 70
    const v1, 0x7f0a00f4

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 71
    .local v0, "view":Landroid/widget/Button;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0191

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 72
    new-instance v1, Lcom/android/gallery3d/filtershow/editors/EditorDraw$1;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/filtershow/editors/EditorDraw$1;-><init>(Lcom/android/gallery3d/filtershow/editors/EditorDraw;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method

.method public reflectCurrentFilter()V
    .locals 3

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/Editor;->reflectCurrentFilter()V

    .line 60
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorDraw;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v1

    .line 62
    .local v1, "rep":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorDraw;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v2

    instance-of v2, v2, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorDraw;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;

    .line 64
    .local v0, "drawRep":Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/EditorDraw;->mImageDraw:Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->setFilterDrawRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;)V

    .line 66
    .end local v0    # "drawRep":Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;
    :cond_0
    return-void
.end method

.method public showColorGrid(Landroid/view/MenuItem;)V
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 147
    new-instance v0, Lcom/android/gallery3d/filtershow/editors/EditorDraw$4;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/editors/EditorDraw$4;-><init>(Lcom/android/gallery3d/filtershow/editors/EditorDraw;)V

    .line 154
    .local v0, "cl":Lcom/android/gallery3d/filtershow/colorpicker/RGBListener;
    new-instance v1, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;-><init>(Landroid/content/Context;Lcom/android/gallery3d/filtershow/colorpicker/RGBListener;)V

    .line 155
    .local v1, "cpd":Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;->show()V

    .line 156
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/colorpicker/ColorGridDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 157
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    return-void
.end method

.method public showSizeDialog(Landroid/view/MenuItem;)V
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 125
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v2

    .line 126
    .local v2, "ctx":Lcom/android/gallery3d/filtershow/FilterShowActivity;
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 127
    .local v3, "dialog":Landroid/app/Dialog;
    const v5, 0x7f0b019a

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setTitle(I)V

    .line 128
    const v5, 0x7f040036

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 129
    const v5, 0x7f0a00ed

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 130
    .local v0, "bar":Landroid/widget/SeekBar;
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast v4, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;

    .line 131
    .local v4, "idraw":Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;
    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->getSize()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 132
    const v5, 0x7f0a00ee

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 133
    .local v1, "button":Landroid/widget/Button;
    new-instance v5, Lcom/android/gallery3d/filtershow/editors/EditorDraw$3;

    invoke-direct {v5, p0, v0, v3}, Lcom/android/gallery3d/filtershow/editors/EditorDraw$3;-><init>(Lcom/android/gallery3d/filtershow/editors/EditorDraw;Landroid/widget/SeekBar;Landroid/app/Dialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 144
    return-void
.end method

.method public showsSeekBar()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method
