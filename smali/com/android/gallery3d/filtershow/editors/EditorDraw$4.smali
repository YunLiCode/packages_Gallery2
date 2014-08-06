.class Lcom/android/gallery3d/filtershow/editors/EditorDraw$4;
.super Ljava/lang/Object;
.source "EditorDraw.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/colorpicker/RGBListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/EditorDraw;->showColorGrid(Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/editors/EditorDraw;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/EditorDraw;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/EditorDraw$4;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDraw;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setColor(I)V
    .locals 2
    .param p1, "rgb"    # I

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/EditorDraw$4;->this$0:Lcom/android/gallery3d/filtershow/editors/EditorDraw;

    iget-object v0, v1, Lcom/android/gallery3d/filtershow/editors/Editor;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast v0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;

    .line 151
    .local v0, "idraw":Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->setColor(I)V

    .line 152
    return-void
.end method
