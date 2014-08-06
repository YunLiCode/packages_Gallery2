.class public Lcom/android/gallery3d/filtershow/editors/ImageOnlyEditor;
.super Lcom/android/gallery3d/filtershow/editors/Editor;
.source "ImageOnlyEditor.java"


# instance fields
.field private final LOGTAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const v0, 0x7f0a0054

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/Editor;-><init>(I)V

    .line 30
    const-string v0, "ImageOnlyEditor"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/ImageOnlyEditor;->LOGTAG:Ljava/lang/String;

    .line 34
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/editors/Editor;-><init>(I)V

    .line 30
    const-string v0, "ImageOnlyEditor"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/ImageOnlyEditor;->LOGTAG:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frameLayout"    # Landroid/widget/FrameLayout;

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/Editor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 47
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    .line 48
    return-void
.end method

.method public useUtilityPanel()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method
