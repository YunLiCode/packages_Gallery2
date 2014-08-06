.class Lcom/google/android/pano/dialog/BaseContentFragment$1;
.super Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;
.source "BaseContentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/pano/dialog/BaseContentFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/dialog/BaseContentFragment;

.field final synthetic val$iconImageView:Landroid/widget/ImageView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/pano/dialog/BaseContentFragment;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/android/pano/dialog/BaseContentFragment$1;->this$0:Lcom/google/android/pano/dialog/BaseContentFragment;

    iput-object p2, p0, Lcom/google/android/pano/dialog/BaseContentFragment$1;->val$iconImageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/google/android/pano/dialog/BaseContentFragment$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapRetrieved(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseContentFragment$1;->val$iconImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseContentFragment$1;->this$0:Lcom/google/android/pano/dialog/BaseContentFragment;

    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment$1;->val$iconImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/pano/dialog/BaseContentFragment$1;->val$view:Landroid/view/View;

    # invokes: Lcom/google/android/pano/dialog/BaseContentFragment;->addShadow(Landroid/widget/ImageView;Landroid/view/View;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/pano/dialog/BaseContentFragment;->access$000(Lcom/google/android/pano/dialog/BaseContentFragment;Landroid/widget/ImageView;Landroid/view/View;)V

    .line 127
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseContentFragment$1;->val$iconImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    return-void
.end method
