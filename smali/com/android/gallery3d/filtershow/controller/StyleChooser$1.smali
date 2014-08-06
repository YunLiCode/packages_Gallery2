.class Lcom/android/gallery3d/filtershow/controller/StyleChooser$1;
.super Ljava/lang/Object;
.source "StyleChooser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$buttonNo:I


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/controller/StyleChooser;I)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/StyleChooser$1;->this$0:Lcom/android/gallery3d/filtershow/controller/StyleChooser;

    iput p2, p0, Lcom/android/gallery3d/filtershow/controller/StyleChooser$1;->val$buttonNo:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/StyleChooser$1;->this$0:Lcom/android/gallery3d/filtershow/controller/StyleChooser;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/controller/StyleChooser;->mParameter:Lcom/android/gallery3d/filtershow/controller/ParameterStyles;

    iget v1, p0, Lcom/android/gallery3d/filtershow/controller/StyleChooser$1;->val$buttonNo:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/filtershow/controller/ParameterStyles;->setSelected(I)V

    .line 54
    return-void
.end method
