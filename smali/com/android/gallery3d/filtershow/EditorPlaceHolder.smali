.class public Lcom/android/gallery3d/filtershow/EditorPlaceHolder;
.super Ljava/lang/Object;
.source "EditorPlaceHolder.java"


# instance fields
.field private mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

.field private mContainer:Landroid/widget/FrameLayout;

.field private mEditors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/gallery3d/filtershow/editors/Editor;",
            ">;"
        }
    .end annotation
.end field

.field private mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

.field private mOldViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/imageshow/ImageShow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 18
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->mContainer:Landroid/widget/FrameLayout;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->mEditors:Ljava/util/HashMap;

    .line 20
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->mOldViews:Ljava/util/Vector;

    .line 21
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 24
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 25
    return-void
.end method


# virtual methods
.method public addEditor(Lcom/android/gallery3d/filtershow/editors/Editor;)V
    .locals 2
    .param p1, "c"    # Lcom/android/gallery3d/filtershow/editors/Editor;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->mEditors:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/Editor;->getID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public getEditor(I)Lcom/android/gallery3d/filtershow/editors/Editor;
    .locals 2
    .param p1, "editorId"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->mEditors:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/editors/Editor;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->mContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 76
    return-void
.end method

.method public hideOldViews()V
    .locals 3

    .prologue
    .line 79
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->mOldViews:Ljava/util/Vector;

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

    .line 80
    .local v1, "view":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setVisibility(I)V

    goto :goto_0

    .line 82
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setContainer(Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "container"    # Landroid/widget/FrameLayout;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->mContainer:Landroid/widget/FrameLayout;

    .line 29
    return-void
.end method

.method public setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V
    .locals 0
    .param p1, "imageLoader"    # Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 86
    return-void
.end method

.method public setOldViews(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/imageshow/ImageShow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "views":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/gallery3d/filtershow/imageshow/ImageShow;>;"
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->mOldViews:Ljava/util/Vector;

    .line 72
    return-void
.end method

.method public showEditor(I)Lcom/android/gallery3d/filtershow/editors/Editor;
    .locals 7
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x0

    .line 43
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->mEditors:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/editors/Editor;

    .line 44
    .local v1, "editor":Lcom/android/gallery3d/filtershow/editors/Editor;
    if-nez v1, :cond_0

    move-object v1, v4

    .line 67
    .end local v1    # "editor":Lcom/android/gallery3d/filtershow/editors/Editor;
    :goto_0
    return-object v1

    .line 49
    .restart local v1    # "editor":Lcom/android/gallery3d/filtershow/editors/Editor;
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5, v6}, Lcom/android/gallery3d/filtershow/editors/Editor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 50
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v1, v5}, Lcom/android/gallery3d/filtershow/editors/Editor;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 51
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->mContainer:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 52
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 53
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/editors/Editor;->getTopLevelView()Landroid/view/View;

    move-result-object v2

    .line 54
    .local v2, "eview":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 56
    .local v3, "parent":Landroid/view/ViewParent;
    if-eqz v3, :cond_1

    instance-of v5, v3, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_1

    .line 57
    check-cast v3, Landroid/widget/FrameLayout;

    .end local v3    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 60
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/EditorPlaceHolder;->hideOldViews()V

    .line 62
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/gallery3d/filtershow/editors/Editor;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    .end local v2    # "eview":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v4

    .line 67
    goto :goto_0
.end method
