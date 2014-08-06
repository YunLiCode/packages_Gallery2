.class public Lcom/android/gallery3d/filtershow/editors/EditorRedEye;
.super Lcom/android/gallery3d/filtershow/editors/Editor;
.source "EditorRedEye.java"


# static fields
.field public static ID:I


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field mImageRedEyes:Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f0a0053

    sput v0, Lcom/android/gallery3d/filtershow/editors/EditorRedEye;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/android/gallery3d/filtershow/editors/EditorRedEye;->ID:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/Editor;-><init>(I)V

    .line 32
    const-string v0, "EditorRedEye"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorRedEye;->LOGTAG:Ljava/lang/String;

    .line 37
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/editors/Editor;-><init>(I)V

    .line 32
    const-string v0, "EditorRedEye"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorRedEye;->LOGTAG:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frameLayout"    # Landroid/widget/FrameLayout;

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/Editor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 46
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorRedEye;->mImageRedEyes:Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/Editor;->mView:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/EditorRedEye;->mImageRedEyes:Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;->setEditor(Lcom/android/gallery3d/filtershow/editors/EditorRedEye;)V

    .line 48
    return-void
.end method

.method public reflectCurrentFilter()V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/Editor;->reflectCurrentFilter()V

    .line 53
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorRedEye;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v1

    .line 54
    .local v1, "rep":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/EditorRedEye;->getLocalRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v2

    instance-of v2, v2, Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 55
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;

    .line 57
    .local v0, "redEyeRep":Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/EditorRedEye;->mImageRedEyes:Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;->setRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;)V

    .line 59
    .end local v0    # "redEyeRep":Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;
    :cond_0
    return-void
.end method

.method public showsSeekBar()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method
