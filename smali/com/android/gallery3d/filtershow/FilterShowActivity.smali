.class public Lcom/android/gallery3d/filtershow/FilterShowActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "FilterShowActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;
    }
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mCategoryBordersAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

.field private mCategoryFiltersAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

.field private mCategoryGeometryAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

.field private mCategoryLooksAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

.field private mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

.field private mCurrentPanel:I

.field private mEditorPlaceHolder:Lcom/android/gallery3d/filtershow/EditorPlaceHolder;

.field private mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

.field private mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

.field private final mImageViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/imageshow/ImageShow;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

.field private mLoading:Z

.field mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

.field private mOutputted:Z

.field private mReturnAsExtra:Z

.field private mSaveAsWallpaper:Z

.field private mSaveButton:Landroid/view/View;

.field private mSaveToExtraUri:Z

.field private mSavingProgressDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mShareActionProvider:Landroid/widget/ShareActionProvider;

.field private mSharedOutputFile:Ljava/io/File;

.field private mSharingImage:Z

.field private mShowingImageStatePanel:Z

.field private mShowingTinyPlanet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1054
    const-string v0, "jni_filtershow_filters"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1055
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 87
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mAction:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    .line 96
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 97
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 99
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSaveButton:Landroid/view/View;

    .line 101
    new-instance v0, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/android/gallery3d/filtershow/EditorPlaceHolder;

    .line 107
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingTinyPlanet:Z

    .line 108
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    .line 110
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    .line 113
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    .line 115
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharingImage:Z

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoading:Z

    .line 122
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCategoryLooksAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    .line 123
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCategoryBordersAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    .line 124
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCategoryGeometryAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    .line 125
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCategoryFiltersAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    .line 126
    iput v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentPanel:I

    .line 945
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSaveToExtraUri:Z

    .line 946
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSaveAsWallpaper:Z

    .line 947
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mReturnAsExtra:Z

    .line 948
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mOutputted:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/FilterShowActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getScreenImageSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/cache/ImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingTinyPlanet:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/gallery3d/filtershow/FilterShowActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/FilterShowActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingTinyPlanet:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/category/CategoryAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCategoryFiltersAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/category/CategoryAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCategoryLooksAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/category/CategoryAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCategoryBordersAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/category/CategoryAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCategoryGeometryAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;)Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/FilterShowActivity;
    .param p1, "x1"    # Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/gallery3d/filtershow/FilterShowActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/FilterShowActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoading:Z

    return p1
.end method

.method private clearGalleryBitmapPool()V
    .locals 2

    .prologue
    .line 532
    new-instance v0, Lcom/android/gallery3d/filtershow/FilterShowActivity$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$3;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 540
    return-void
.end method

.method private fillBorders()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 357
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 360
    .local v0, "borders":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;>;"
    new-instance v5, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;

    invoke-direct {v5, v7}, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;-><init>(I)V

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getManager()Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    move-result-object v5

    invoke-virtual {v5, p0, v0}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->addBorders(Landroid/content/Context;Ljava/util/Vector;)V

    .line 365
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 366
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 367
    .local v1, "filter":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    if-nez v2, :cond_0

    .line 368
    const v5, 0x7f0b0189

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setName(Ljava/lang/String;)V

    .line 365
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 372
    .end local v1    # "filter":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :cond_1
    new-instance v5, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    invoke-direct {v5, p0}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCategoryBordersAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    .line 373
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 374
    .local v4, "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getTextId()I

    move-result v5

    if-eqz v5, :cond_2

    .line 375
    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getTextId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setName(Ljava/lang/String;)V

    .line 377
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCategoryBordersAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    new-instance v6, Lcom/android/gallery3d/filtershow/category/Action;

    invoke-direct {v6, p0, v4, v7}, Lcom/android/gallery3d/filtershow/category/Action;-><init>(Landroid/content/Context;Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;I)V

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->add(Lcom/android/gallery3d/filtershow/category/Action;)V

    goto :goto_1

    .line 379
    .end local v4    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :cond_3
    return-void
.end method

.method private fillEditors()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/android/gallery3d/filtershow/EditorPlaceHolder;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/EditorDraw;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/editors/EditorDraw;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->addEditor(Lcom/android/gallery3d/filtershow/editors/Editor;)V

    .line 305
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/android/gallery3d/filtershow/EditorPlaceHolder;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/BasicEditor;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/editors/BasicEditor;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->addEditor(Lcom/android/gallery3d/filtershow/editors/Editor;)V

    .line 306
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/android/gallery3d/filtershow/EditorPlaceHolder;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/ImageOnlyEditor;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/editors/ImageOnlyEditor;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->addEditor(Lcom/android/gallery3d/filtershow/editors/Editor;)V

    .line 307
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/android/gallery3d/filtershow/EditorPlaceHolder;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/EditorTinyPlanet;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/editors/EditorTinyPlanet;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->addEditor(Lcom/android/gallery3d/filtershow/editors/Editor;)V

    .line 308
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/android/gallery3d/filtershow/EditorPlaceHolder;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/EditorRedEye;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/editors/EditorRedEye;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->addEditor(Lcom/android/gallery3d/filtershow/editors/Editor;)V

    .line 309
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/android/gallery3d/filtershow/EditorPlaceHolder;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/EditorCrop;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/editors/EditorCrop;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->addEditor(Lcom/android/gallery3d/filtershow/editors/Editor;)V

    .line 310
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/android/gallery3d/filtershow/EditorPlaceHolder;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/EditorFlip;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/editors/EditorFlip;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->addEditor(Lcom/android/gallery3d/filtershow/editors/Editor;)V

    .line 311
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/android/gallery3d/filtershow/EditorPlaceHolder;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/EditorRotate;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/editors/EditorRotate;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->addEditor(Lcom/android/gallery3d/filtershow/editors/Editor;)V

    .line 312
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/android/gallery3d/filtershow/EditorPlaceHolder;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/EditorStraighten;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/editors/EditorStraighten;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->addEditor(Lcom/android/gallery3d/filtershow/editors/Editor;)V

    .line 313
    return-void
.end method

.method private fillFilters()V
    .locals 6

    .prologue
    .line 240
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 241
    .local v1, "filtersRepresentations":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;>;"
    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getManager()Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    move-result-object v0

    .line 242
    .local v0, "filtersManager":Lcom/android/gallery3d/filtershow/filters/FiltersManager;
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->addEffects(Ljava/util/Vector;)V

    .line 244
    new-instance v4, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCategoryFiltersAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    .line 245
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 246
    .local v3, "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getTextId()I

    move-result v4

    if-eqz v4, :cond_0

    .line 247
    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getTextId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setName(Ljava/lang/String;)V

    .line 249
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCategoryFiltersAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    new-instance v5, Lcom/android/gallery3d/filtershow/category/Action;

    invoke-direct {v5, p0, v3}, Lcom/android/gallery3d/filtershow/category/Action;-><init>(Landroid/content/Context;Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->add(Lcom/android/gallery3d/filtershow/category/Action;)V

    goto :goto_0

    .line 251
    .end local v3    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :cond_1
    return-void
.end method

.method private fillFx()V
    .locals 5

    .prologue
    const v2, 0x7f0b0189

    const/4 v4, 0x0

    .line 758
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4, v2}, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;-><init>(Ljava/lang/String;II)V

    .line 760
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 761
    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getManager()Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->addLooks(Landroid/content/Context;Ljava/util/Vector;)V

    .line 763
    new-instance v2, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCategoryLooksAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    .line 764
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 765
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCategoryLooksAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->setItemHeight(I)V

    .line 766
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCategoryLooksAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    new-instance v3, Lcom/android/gallery3d/filtershow/category/Action;

    invoke-direct {v3, p0, v0, v4}, Lcom/android/gallery3d/filtershow/category/Action;-><init>(Landroid/content/Context;Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;I)V

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->add(Lcom/android/gallery3d/filtershow/category/Action;)V

    .line 767
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 768
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCategoryLooksAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    new-instance v3, Lcom/android/gallery3d/filtershow/category/Action;

    invoke-direct {v3, p0, v0, v4}, Lcom/android/gallery3d/filtershow/category/Action;-><init>(Landroid/content/Context;Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;I)V

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->add(Lcom/android/gallery3d/filtershow/category/Action;)V

    goto :goto_0

    .line 770
    :cond_0
    return-void
.end method

.method private fillGeometry()V
    .locals 12

    .prologue
    .line 254
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 255
    .local v4, "filtersRepresentations":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;>;"
    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getManager()Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    move-result-object v3

    .line 257
    .local v3, "filtersManager":Lcom/android/gallery3d/filtershow/filters/FiltersManager;
    new-instance v5, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-direct {v5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;-><init>()V

    .line 258
    .local v5, "geo":Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getEditorIds()[I

    move-result-object v2

    .line 259
    .local v2, "editorsId":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v10, v2

    if-ge v7, v10, :cond_1

    .line 260
    aget v0, v2, v7

    .line 261
    .local v0, "editorId":I
    new-instance v6, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-direct {v6, v5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;-><init>(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V

    .line 262
    .local v6, "geometry":Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
    invoke-virtual {v6, v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setEditorId(I)V

    .line 263
    iget-object v10, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/android/gallery3d/filtershow/EditorPlaceHolder;

    invoke-virtual {v10, v0}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->getEditor(I)Lcom/android/gallery3d/filtershow/editors/Editor;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/editors/EditorInfo;

    .line 264
    .local v1, "editorInfo":Lcom/android/gallery3d/filtershow/editors/EditorInfo;
    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/editors/EditorInfo;->getTextId()I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setTextId(I)V

    .line 265
    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/editors/EditorInfo;->getOverlayId()I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setOverlayId(I)V

    .line 266
    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/editors/EditorInfo;->getOverlayOnly()Z

    move-result v10

    invoke-virtual {v6, v10}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setOverlayOnly(Z)V

    .line 267
    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getTextId()I

    move-result v10

    if-eqz v10, :cond_0

    .line 268
    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getTextId()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setName(Ljava/lang/String;)V

    .line 270
    :cond_0
    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 273
    .end local v0    # "editorId":I
    .end local v1    # "editorInfo":Lcom/android/gallery3d/filtershow/editors/EditorInfo;
    .end local v6    # "geometry":Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
    :cond_1
    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->addTools(Ljava/util/Vector;)V

    .line 275
    new-instance v10, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    invoke-direct {v10, p0}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCategoryGeometryAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    .line 276
    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 277
    .local v9, "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    iget-object v10, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCategoryGeometryAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    new-instance v11, Lcom/android/gallery3d/filtershow/category/Action;

    invoke-direct {v11, p0, v9}, Lcom/android/gallery3d/filtershow/category/Action;-><init>(Landroid/content/Context;Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->add(Lcom/android/gallery3d/filtershow/category/Action;)V

    goto :goto_1

    .line 279
    .end local v9    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :cond_2
    return-void
.end method

.method private getDefaultShareIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 630
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 631
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 632
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 633
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->getNewFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    .line 635
    sget-object v1, Lcom/android/gallery3d/filtershow/provider/SharedImageProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 637
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 638
    return-object v0
.end method

.method private getScreenImageSize()I
    .locals 6

    .prologue
    .line 561
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 562
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 563
    .local v0, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 564
    .local v3, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 565
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 566
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 567
    .local v2, "msize":I
    mul-int/lit16 v4, v2, 0x85

    iget v5, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/2addr v4, v5

    return v4
.end method

.method private hideSavingProgress()V
    .locals 2

    .prologue
    .line 591
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 592
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 593
    .local v0, "progress":Landroid/app/ProgressDialog;
    if-eqz v0, :cond_0

    .line 594
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 596
    .end local v0    # "progress":Landroid/app/ProgressDialog;
    :cond_0
    return-void
.end method

.method private loadXML()V
    .locals 3

    .prologue
    .line 204
    const v1, 0x7f040029

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->setContentView(I)V

    .line 206
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 207
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 208
    const v1, 0x7f040028

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 210
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSaveButton:Landroid/view/View;

    .line 211
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSaveButton:Landroid/view/View;

    new-instance v2, Lcom/android/gallery3d/filtershow/FilterShowActivity$2;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$2;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    const v1, 0x7f0a00be

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 219
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->setupEditors()V

    .line 223
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/android/gallery3d/filtershow/EditorPlaceHolder;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->hide()V

    .line 225
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 227
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->fillFx()V

    .line 228
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->fillBorders()V

    .line 229
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->fillGeometry()V

    .line 230
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->fillFilters()V

    .line 232
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->setupStatePanel()V

    .line 233
    return-void
.end method

.method private processIntent()V
    .locals 3

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 283
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "launch-fullscreen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 287
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mAction:Ljava/lang/String;

    .line 289
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 290
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->startLoadBitmap(Landroid/net/Uri;)V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->pickImage()V

    goto :goto_0
.end method

.method private rsPause()V
    .locals 2

    .prologue
    .line 706
    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->getPipeline()Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->turnOnPipeline(Z)V

    .line 707
    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->reset()V

    .line 708
    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->resetStatics()V

    .line 709
    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getPreviewManager()Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->freeRSFilterScripts()V

    .line 710
    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getManager()Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->freeRSFilterScripts()V

    .line 711
    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getHighresManager()Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->freeRSFilterScripts()V

    .line 712
    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->reset()V

    .line 713
    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->destroyRenderScriptContext()V

    .line 714
    return-void
.end method

.method private rsResume()V
    .locals 7

    .prologue
    .line 681
    invoke-static {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setActivityForMemoryToasts(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 682
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    invoke-static {v5}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/MasterImage;)V

    .line 683
    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v5

    if-nez v5, :cond_0

    .line 684
    invoke-static {p0}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->createRenderscriptContext(Landroid/app/Activity;)V

    .line 686
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->setResources(Landroid/content/res/Resources;)V

    .line 687
    iget-boolean v5, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoading:Z

    if-nez v5, :cond_2

    .line 688
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBitmapLarge()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 689
    .local v2, "largeBitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->getPipeline()Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;

    move-result-object v3

    .line 690
    .local v3, "pipeline":Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;
    invoke-virtual {v3, v2}, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->setOriginal(Landroid/graphics/Bitmap;)V

    .line 691
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 693
    .local v4, "previewScale":F
    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->setPreviewScaleFactor(F)V

    .line 694
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBitmapHighres()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 695
    .local v1, "highresBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 696
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v5, v6

    .line 698
    .local v0, "highResPreviewScale":F
    invoke-virtual {v3, v0}, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->setHighResPreviewScaleFactor(F)V

    .line 700
    .end local v0    # "highResPreviewScale":F
    :cond_1
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->turnOnPipeline(Z)V

    .line 701
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setOriginalGeometry(Landroid/graphics/Bitmap;)V

    .line 703
    .end local v1    # "highresBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "largeBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "pipeline":Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;
    .end local v4    # "previewScale":F
    :cond_2
    return-void
.end method

.method private setDefaultValues()V
    .locals 7

    .prologue
    const/high16 v6, 0x41900000

    const/high16 v5, 0x41200000

    const/high16 v4, 0x40800000

    .line 316
    invoke-static {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setActivityForMemoryToasts(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 318
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 319
    .local v2, "res":Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->setResources(Landroid/content/res/Resources;)V

    .line 321
    const/high16 v3, 0x41000000

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/category/CategoryView;->setMargin(I)V

    .line 322
    const/high16 v3, 0x41800000

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/category/CategoryView;->setTextSize(I)V

    .line 324
    const v3, 0x7f09005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setDefaultBackgroundColor(I)V

    .line 326
    const/high16 v3, 0x41600000

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->setTextSize(I)V

    .line 327
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->setTrianglePadding(I)V

    .line 328
    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->setTriangleSize(I)V

    .line 329
    const/high16 v3, 0x41400000

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setTextSize(I)V

    .line 330
    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setTextPadding(I)V

    .line 331
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setOriginalTextMargin(I)V

    .line 332
    invoke-virtual {p0, v6}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setOriginalTextSize(I)V

    .line 333
    const v3, 0x7f0b0156

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setOriginalText(Ljava/lang/String;)V

    .line 335
    const v3, 0x7f020024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 336
    .local v0, "curveHandle":Landroid/graphics/drawable/Drawable;
    const v3, 0x7f0e00e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 337
    .local v1, "curveHandleSize":I
    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/ui/Spline;->setCurveHandle(Landroid/graphics/drawable/Drawable;I)V

    .line 338
    const/high16 v3, 0x40400000

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/ui/Spline;->setCurveWidth(I)V

    .line 340
    invoke-virtual {p0, v6}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setAspectTextSize(I)V

    .line 341
    const/high16 v3, 0x41c80000

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setTouchTolerance(I)V

    .line 342
    const/high16 v3, 0x425c0000

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setMinCropSize(I)V

    .line 343
    return-void
.end method

.method private setupEditors()V
    .locals 2

    .prologue
    .line 297
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/android/gallery3d/filtershow/EditorPlaceHolder;

    const v0, 0x7f0a00bd

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->setContainer(Landroid/widget/FrameLayout;)V

    .line 298
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/android/gallery3d/filtershow/EditorPlaceHolder;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/editors/EditorManager;->addEditors(Lcom/android/gallery3d/filtershow/EditorPlaceHolder;)V

    .line 299
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/android/gallery3d/filtershow/EditorPlaceHolder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->setOldViews(Ljava/util/Vector;)V

    .line 300
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/android/gallery3d/filtershow/EditorPlaceHolder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 301
    return-void
.end method

.method private showSavingProgress(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 572
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 574
    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 588
    :goto_0
    return-void

    .line 581
    :cond_0
    if-nez p1, :cond_1

    .line 582
    const v0, 0x7f0b01af

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 586
    :goto_1
    const-string v1, ""

    invoke-static {p0, v1, v0, v3, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 587
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 584
    :cond_1
    const v0, 0x7f0b01b0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private startLoadBitmap(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 346
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoading:Z

    .line 347
    const v2, 0x7f0a009e

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 348
    .local v1, "loading":Landroid/view/View;
    const v2, 0x7f0a00be

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 349
    .local v0, "imageShow":Landroid/view/View;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 350
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 351
    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingTinyPlanet:Z

    .line 352
    new-instance v2, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    .line 353
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    new-array v3, v3, [Landroid/net/Uri;

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 354
    return-void
.end method


# virtual methods
.method public backToMain()V
    .locals 3

    .prologue
    .line 871
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "MainPanel"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 872
    .local v0, "currentPanel":Landroid/support/v4/app/Fragment;
    instance-of v1, v0, Lcom/android/gallery3d/filtershow/category/MainPanel;

    if-eqz v1, :cond_0

    .line 877
    :goto_0
    return-void

    .line 875
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->loadMainPanel()V

    .line 876
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->showDefaultImageView()V

    goto :goto_0
.end method

.method public cannotLoadImage()V
    .locals 2

    .prologue
    .line 906
    const v0, 0x7f0b0155

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 907
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 908
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 909
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->finish()V

    .line 910
    return-void
.end method

.method public completeSaveImage(Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharingImage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 601
    sget-object v0, Lcom/android/gallery3d/filtershow/provider/SharedImageProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 603
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 604
    const-string v2, "prepare"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 605
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 607
    :cond_0
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->setResult(ILandroid/content/Intent;)V

    .line 608
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->hideSavingProgress()V

    .line 609
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->finish()V

    .line 610
    return-void
.end method

.method public done()V
    .locals 1

    .prologue
    .line 1047
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mOutputted:Z

    if-eqz v0, :cond_0

    .line 1048
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->hideSavingProgress()V

    .line 1050
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->finish()V

    .line 1051
    return-void
.end method

.method public enableSave(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSaveButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSaveButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 755
    :cond_0
    return-void
.end method

.method public getCategoryBordersAdapter()Lcom/android/gallery3d/filtershow/category/CategoryAdapter;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCategoryBordersAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    return-object v0
.end method

.method public getCategoryFiltersAdapter()Lcom/android/gallery3d/filtershow/category/CategoryAdapter;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCategoryFiltersAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    return-object v0
.end method

.method public getCategoryGeometryAdapter()Lcom/android/gallery3d/filtershow/category/CategoryAdapter;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCategoryGeometryAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    return-object v0
.end method

.method public getCategoryLooksAdapter()Lcom/android/gallery3d/filtershow/category/CategoryAdapter;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCategoryLooksAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    return-object v0
.end method

.method public getCurrentPanel()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentPanel:I

    return v0
.end method

.method public getEditor(I)Lcom/android/gallery3d/filtershow/editors/Editor;
    .locals 1
    .param p1, "editorID"    # I

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/android/gallery3d/filtershow/EditorPlaceHolder;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->getEditor(I)Lcom/android/gallery3d/filtershow/editors/Editor;

    move-result-object v0

    return-object v0
.end method

.method public getPixelsFromDip(F)F
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 915
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 916
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1
.end method

.method public handleSpecialExitCases()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 972
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    if-eqz v0, :cond_3

    .line 973
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/CropExtras;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 974
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSaveToExtraUri:Z

    .line 975
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mOutputted:Z

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/CropExtras;->getSetAsWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 978
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSaveAsWallpaper:Z

    .line 979
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mOutputted:Z

    .line 981
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/CropExtras;->getReturnData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 982
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mReturnAsExtra:Z

    .line 983
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mOutputted:Z

    .line 985
    :cond_2
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mOutputted:Z

    if-eqz v0, :cond_3

    .line 986
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setUseCropExtrasFlag(Z)V

    .line 987
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->showSavingProgress(Ljava/lang/String;)V

    .line 988
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->returnFilteredResult(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 991
    :cond_3
    return-void
.end method

.method public invalidateViews()V
    .locals 3

    .prologue
    .line 785
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 786
    .local v1, "views":Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->invalidate()V

    .line 787
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->updateImage()V

    goto :goto_0

    .line 789
    .end local v1    # "views":Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    :cond_0
    return-void
.end method

.method public isShowingImageStatePanel()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    return v0
.end method

.method public loadEditorPanel(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;Lcom/android/gallery3d/filtershow/editors/Editor;)V
    .locals 10
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .param p2, "currentEditor"    # Lcom/android/gallery3d/filtershow/editors/Editor;

    .prologue
    .line 169
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getEditorId()I

    move-result v8

    const v9, 0x7f0a0054

    if-ne v8, v9, :cond_0

    .line 170
    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/editors/Editor;->getImageShow()Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->select()V

    .line 171
    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/editors/Editor;->reflectCurrentFilter()V

    .line 201
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/editors/Editor;->getID()I

    move-result v2

    .line 175
    .local v2, "currentId":I
    new-instance v7, Lcom/android/gallery3d/filtershow/FilterShowActivity$1;

    invoke-direct {v7, p0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity$1;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;I)V

    .line 186
    .local v7, "showEditor":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    const-string v9, "MainPanel"

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 187
    .local v4, "main":Landroid/support/v4/app/Fragment;
    const/4 v3, 0x0

    .line 188
    .local v3, "doAnimation":Z
    iget-boolean v8, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 190
    const/4 v3, 0x1

    .line 192
    :cond_1
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    instance-of v8, v4, Lcom/android/gallery3d/filtershow/category/MainPanel;

    if-eqz v8, :cond_2

    move-object v5, v4

    .line 193
    check-cast v5, Lcom/android/gallery3d/filtershow/category/MainPanel;

    .line 194
    .local v5, "mainPanel":Lcom/android/gallery3d/filtershow/category/MainPanel;
    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/category/MainPanel;->getView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0a00fc

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 195
    .local v1, "container":Landroid/view/View;
    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/category/MainPanel;->getView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0a00fd

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 196
    .local v0, "bottom":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int v6, v8, v9

    .line 197
    .local v6, "panelHeight":I
    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/category/MainPanel;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    int-to-float v9, v6

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 199
    .end local v0    # "bottom":Landroid/view/View;
    .end local v1    # "container":Landroid/view/View;
    .end local v5    # "mainPanel":Lcom/android/gallery3d/filtershow/category/MainPanel;
    .end local v6    # "panelHeight":I
    :cond_2
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public loadMainPanel()V
    .locals 4

    .prologue
    const v3, 0x7f0a00bf

    .line 158
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 165
    :goto_0
    return-void

    .line 161
    :cond_0
    new-instance v0, Lcom/android/gallery3d/filtershow/category/MainPanel;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/category/MainPanel;-><init>()V

    .line 162
    .local v0, "panel":Lcom/android/gallery3d/filtershow/category/MainPanel;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 163
    .local v1, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const-string v2, "MainPanel"

    invoke-virtual {v1, v3, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 164
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 937
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 938
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 939
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 940
    .local v0, "selectedImageUri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->startLoadBitmap(Landroid/net/Uri;)V

    .line 943
    .end local v0    # "selectedImageUri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 881
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "MainPanel"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 882
    instance-of v0, v0, Lcom/android/gallery3d/filtershow/category/MainPanel;

    if-eqz v0, :cond_1

    .line 883
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->hasModifications()Z

    move-result v0

    if-nez v0, :cond_0

    .line 884
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->done()V

    .line 903
    :goto_0
    return-void

    .line 886
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 887
    const v1, 0x7f0b0160

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0161

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 888
    const v1, 0x7f0b0162

    new-instance v2, Lcom/android/gallery3d/filtershow/FilterShowActivity$4;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$4;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 893
    const v1, 0x7f0b004a

    new-instance v2, Lcom/android/gallery3d/filtershow/FilterShowActivity$5;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$5;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 898
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 901
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->backToMain()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 819
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 820
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->setDefaultValues()V

    .line 821
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->loadXML()V

    .line 822
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->loadMainPanel()V

    .line 825
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingTinyPlanet:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    if-nez v1, :cond_0

    .line 826
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCategoryFiltersAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->removeTinyPlanet()V

    .line 828
    :cond_0
    const v1, 0x7f0a009e

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 829
    .local v0, "loading":Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 830
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 133
    .local v0, "onlyUsePortrait":Z
    if-eqz v0, :cond_0

    .line 134
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->setRequestedOrientation(I)V

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/MasterImage;)V

    .line 138
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->clearGalleryBitmapPool()V

    .line 140
    invoke-static {p0}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->createRenderscriptContext(Landroid/app/Activity;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->setupMasterImage()V

    .line 142
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->setDefaultValues()V

    .line 143
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->fillEditors()V

    .line 145
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->loadXML()V

    .line 146
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->loadMainPanel()V

    .line 148
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->setDefaultPreset()V

    .line 150
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->processIntent()V

    .line 151
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f120004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 644
    const v0, 0x7f0a01b4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 645
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    if-eqz v1, :cond_0

    .line 646
    const v1, 0x7f0b015e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 650
    :goto_0
    const v0, 0x7f0a01b0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v0

    check-cast v0, Landroid/widget/ShareActionProvider;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    .line 652
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getDefaultShareIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 653
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v0, p0}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 655
    const v0, 0x7f0a01b1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 656
    const v1, 0x7f0a01b2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 657
    const v2, 0x7f0a01b3

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 658
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->setMenuItems(Landroid/view/MenuItem;Landroid/view/MenuItem;Landroid/view/MenuItem;)V

    .line 659
    const/4 v0, 0x1

    return v0

    .line 648
    :cond_0
    const v1, 0x7f0b015d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 544
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->cancel(Z)Z

    .line 548
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->getPipeline()Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->turnOnPipeline(Z)V

    .line 549
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->reset()V

    .line 550
    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->reset()V

    .line 551
    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->resetStatics()V

    .line 552
    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getPreviewManager()Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->freeRSFilterScripts()V

    .line 553
    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getManager()Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->freeRSFilterScripts()V

    .line 554
    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getHighresManager()Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->freeRSFilterScripts()V

    .line 555
    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->reset()V

    .line 556
    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->destroyRenderScriptContext()V

    .line 557
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 558
    return-void
.end method

.method public onFilteredResult(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 994
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 995
    const-string v1, "cropped-rect"

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImageCropBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 996
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSaveToExtraUri:Z

    if-eqz v1, :cond_0

    .line 997
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/crop/CropExtras;->getExtraOutput()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/crop/CropExtras;->getOutputFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->saveToUri(Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/String;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 1000
    :cond_0
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSaveAsWallpaper:Z

    if-eqz v1, :cond_1

    .line 1001
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->setWallpaperInBackground(Landroid/graphics/Bitmap;)V

    .line 1003
    :cond_1
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mReturnAsExtra:Z

    if-eqz v1, :cond_2

    .line 1004
    if-eqz p1, :cond_2

    .line 1005
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    .line 1011
    const v2, 0xf1b30

    if-le v1, v2, :cond_4

    .line 1012
    const-string v1, "FilterShowActivity"

    const-string v2, "Bitmap too large to be returned via intent"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_2
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->setResult(ILandroid/content/Intent;)V

    .line 1019
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSaveToExtraUri:Z

    if-nez v0, :cond_3

    .line 1020
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->done()V

    .line 1022
    :cond_3
    return-void

    .line 1014
    :cond_4
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 923
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    invoke-virtual {v0, p3}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->onHistoryItemClick(I)V

    .line 924
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateViews()V

    .line 925
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 718
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 749
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 720
    :sswitch_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v1

    .line 721
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->undo()I

    move-result v1

    .line 722
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->onHistoryItemClick(I)V

    .line 723
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    const-string v2, "Undo"

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->showToast(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->backToMain()V

    .line 725
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateViews()V

    goto :goto_0

    .line 729
    :sswitch_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v1

    .line 730
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->redo()I

    move-result v1

    .line 731
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->onHistoryItemClick(I)V

    .line 732
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    const-string v2, "Redo"

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->showToast(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateViews()V

    goto :goto_0

    .line 737
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->resetHistory()V

    goto :goto_0

    .line 741
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->toggleImageStatePanel()V

    goto :goto_0

    .line 745
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->saveImage()V

    goto :goto_0

    .line 718
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_4
        0x7f0a01b1 -> :sswitch_0
        0x7f0a01b2 -> :sswitch_1
        0x7f0a01b3 -> :sswitch_2
        0x7f0a01b4 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 664
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 665
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->rsPause()V

    .line 666
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 669
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 673
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 674
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->rsResume()V

    .line 675
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v0, p0}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 678
    :cond_0
    return-void
.end method

.method public onShareTargetSelected(Landroid/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 616
    sget-object v0, Lcom/android/gallery3d/filtershow/provider/SharedImageProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 618
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 619
    const-string v2, "prepare"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 620
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 621
    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharingImage:Z

    .line 624
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->showSavingProgress(Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    invoke-virtual {v0, p0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->saveImage(Lcom/android/gallery3d/filtershow/FilterShowActivity;Ljava/io/File;)V

    .line 626
    return v4
.end method

.method public pickImage()V
    .locals 2

    .prologue
    .line 928
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 929
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 930
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 931
    const v1, 0x7f0b01b4

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 933
    return-void
.end method

.method public removeFilterRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 5
    .param p1, "filterRepresentation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 398
    if-nez p1, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getPreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v2

    .line 402
    .local v2, "oldPreset":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-direct {v0, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 403
    .local v0, "copy":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->removeFilter(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    .line 404
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setPreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)V

    .line 405
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getCurrentFilterRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 406
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getLastRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v1

    .line 407
    .local v1, "lastRepresentation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setCurrentFilterRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    goto :goto_0
.end method

.method resetHistory()V
    .locals 4

    .prologue
    .line 855
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v0

    .line 856
    .local v0, "adapter":Lcom/android/gallery3d/filtershow/HistoryAdapter;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->reset()V

    .line 857
    new-instance v1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-direct {v1, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 858
    .local v1, "original":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setPreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)V

    .line 859
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateViews()V

    .line 860
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->backToMain()V

    .line 861
    return-void
.end method

.method public saveImage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 951
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->handleSpecialExitCases()V

    .line 952
    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mOutputted:Z

    if-nez v3, :cond_0

    .line 953
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->hasModifications()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 955
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->getFinalSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v2

    .line 956
    .local v2, "saveDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    .line 957
    .local v1, "bucketId":I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v1, v4}, Lcom/android/gallery3d/data/LocalAlbum;->getLocalizedName(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 958
    .local v0, "albumName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->showSavingProgress(Ljava/lang/String;)V

    .line 959
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, p0, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->saveImage(Lcom/android/gallery3d/filtershow/FilterShowActivity;Ljava/io/File;)V

    .line 964
    .end local v0    # "albumName":Ljava/lang/String;
    .end local v1    # "bucketId":I
    .end local v2    # "saveDir":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 961
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->done()V

    goto :goto_0
.end method

.method public setCurrentPanel(I)V
    .locals 0
    .param p1, "currentPanel"    # I

    .prologue
    .line 451
    iput p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentPanel:I

    .line 452
    return-void
.end method

.method public setDefaultPreset()V
    .locals 3

    .prologue
    .line 774
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    const v1, 0x7f0b0165

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Ljava/lang/String;)V

    .line 775
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 777
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setPreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)V

    .line 778
    return-void
.end method

.method setWallpaperInBackground(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1025
    const v0, 0x7f0b0157

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1026
    new-instance v0, Lcom/android/gallery3d/filtershow/FilterShowActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity$6;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/graphics/Bitmap;)V

    .line 1043
    new-instance v1, Lcom/android/gallery3d/filtershow/tools/BitmapTask;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/filtershow/tools/BitmapTask;-><init>(Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks;)V

    new-array v0, v2, [Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/tools/BitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1044
    return-void
.end method

.method public setupMasterImage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 833
    new-instance v0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 835
    new-instance v0, Lcom/android/gallery3d/filtershow/HistoryAdapter;

    const v1, 0x7f04003a

    const v2, 0x7f0a00fb

    invoke-direct {v0, p0, v1, v2}, Lcom/android/gallery3d/filtershow/HistoryAdapter;-><init>(Landroid/content/Context;II)V

    .line 839
    new-instance v1, Lcom/android/gallery3d/filtershow/state/StateAdapter;

    invoke-direct {v1, p0, v4}, Lcom/android/gallery3d/filtershow/state/StateAdapter;-><init>(Landroid/content/Context;I)V

    .line 840
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->reset()V

    .line 841
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    .line 842
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setHistoryAdapter(Lcom/android/gallery3d/filtershow/HistoryAdapter;)V

    .line 843
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setStateAdapter(Lcom/android/gallery3d/filtershow/state/StateAdapter;)V

    .line 844
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setActivity(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 845
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 847
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x8000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setSupportsHighRes(Z)V

    .line 852
    :goto_0
    return-void

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setSupportsHighRes(Z)V

    goto :goto_0
.end method

.method public setupStatePanel()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->setAdapter(Lcom/android/gallery3d/filtershow/HistoryAdapter;)V

    .line 237
    return-void
.end method

.method public showDefaultImageView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 864
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/android/gallery3d/filtershow/EditorPlaceHolder;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->hide()V

    .line 865
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setVisibility(I)V

    .line 866
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setCurrentFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 867
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setCurrentFilterRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    .line 868
    return-void
.end method

.method public showRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 3
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 436
    if-nez p1, :cond_0

    .line 444
    :goto_0
    return-void

    .line 439
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->useFilterRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    .line 442
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/android/gallery3d/filtershow/EditorPlaceHolder;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getEditorId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->showEditor(I)Lcom/android/gallery3d/filtershow/editors/Editor;

    move-result-object v0

    .line 443
    .local v0, "mCurrentEditor":Lcom/android/gallery3d/filtershow/editors/Editor;
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->loadEditorPanel(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;Lcom/android/gallery3d/filtershow/editors/Editor;)V

    goto :goto_0
.end method

.method public toggleImageStatePanel()V
    .locals 5

    .prologue
    .line 802
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateOptionsMenu()V

    .line 803
    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    .line 804
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "MainPanel"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 805
    .local v2, "panel":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_0

    .line 806
    instance-of v3, v2, Lcom/android/gallery3d/filtershow/editors/EditorPanel;

    if-eqz v3, :cond_2

    move-object v0, v2

    .line 807
    check-cast v0, Lcom/android/gallery3d/filtershow/editors/EditorPanel;

    .line 808
    .local v0, "editorPanel":Lcom/android/gallery3d/filtershow/editors/EditorPanel;
    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/editors/EditorPanel;->showImageStatePanel(Z)V

    .line 814
    .end local v0    # "editorPanel":Lcom/android/gallery3d/filtershow/editors/EditorPanel;
    :cond_0
    :goto_1
    return-void

    .line 803
    .end local v2    # "panel":Landroid/support/v4/app/Fragment;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 809
    .restart local v2    # "panel":Landroid/support/v4/app/Fragment;
    :cond_2
    instance-of v3, v2, Lcom/android/gallery3d/filtershow/category/MainPanel;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 810
    check-cast v1, Lcom/android/gallery3d/filtershow/category/MainPanel;

    .line 811
    .local v1, "mainPanel":Lcom/android/gallery3d/filtershow/category/MainPanel;
    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/filtershow/category/MainPanel;->showImageStatePanel(Z)V

    goto :goto_1
.end method

.method public useFilterRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 5
    .param p1, "filterRepresentation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 412
    if-nez p1, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getCurrentFilterRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v3

    if-eq v3, p1, :cond_0

    .line 418
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getPreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    .line 419
    .local v1, "oldPreset":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 420
    .local v0, "copy":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v2

    .line 421
    .local v2, "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    if-nez v2, :cond_2

    .line 422
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->addFilter(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    .line 431
    :goto_1
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setPreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)V

    .line 432
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setCurrentFilterRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    goto :goto_0

    .line 424
    :cond_2
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->allowsMultipleInstances()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 425
    invoke-virtual {v2, p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->updateTempParametersFrom(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    .line 426
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->synchronizeRepresentation()V

    .line 429
    :cond_3
    move-object p1, v2

    goto :goto_1
.end method
