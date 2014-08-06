.class Lcom/android/gallery3d/filtershow/controller/StyleChooser$2;
.super Ljava/lang/Object;
.source "StyleChooser.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/cache/RenderingRequestCaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/controller/StyleChooser;->setUp(Landroid/view/ViewGroup;Lcom/android/gallery3d/filtershow/controller/Parameter;Lcom/android/gallery3d/filtershow/editors/Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/controller/StyleChooser;

.field final synthetic val$button:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/controller/StyleChooser;Landroid/widget/ImageButton;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/StyleChooser$2;->this$0:Lcom/android/gallery3d/filtershow/controller/StyleChooser;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/controller/StyleChooser$2;->val$button:Landroid/widget/ImageButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public available(Lcom/android/gallery3d/filtershow/cache/RenderingRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/android/gallery3d/filtershow/cache/RenderingRequest;

    .prologue
    .line 60
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 61
    .local v0, "bmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/controller/StyleChooser$2;->val$button:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
