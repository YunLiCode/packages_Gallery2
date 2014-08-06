.class final Lcom/android/photos/canvas/GalleryCanvasUtils$1;
.super Landroid/os/AsyncTask;
.source "GalleryCanvasUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/photos/canvas/GalleryCanvasUtils;->createActionsAsync(Lcom/google/android/pano/dialog/ActionFragment;ZLcom/android/photos/canvas/GalleryCanvasUtils$GetActions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/google/android/pano/dialog/Action;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$actionFragment:Lcom/google/android/pano/dialog/ActionFragment;

.field final synthetic val$getter:Lcom/android/photos/canvas/GalleryCanvasUtils$GetActions;

.field final synthetic val$position:I

.field final synthetic val$setPosition:Z


# direct methods
.method constructor <init>(Lcom/android/photos/canvas/GalleryCanvasUtils$GetActions;Lcom/google/android/pano/dialog/ActionFragment;ZI)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/photos/canvas/GalleryCanvasUtils$1;->val$getter:Lcom/android/photos/canvas/GalleryCanvasUtils$GetActions;

    iput-object p2, p0, Lcom/android/photos/canvas/GalleryCanvasUtils$1;->val$actionFragment:Lcom/google/android/pano/dialog/ActionFragment;

    iput-boolean p3, p0, Lcom/android/photos/canvas/GalleryCanvasUtils$1;->val$setPosition:Z

    iput p4, p0, Lcom/android/photos/canvas/GalleryCanvasUtils$1;->val$position:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 85
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/photos/canvas/GalleryCanvasUtils$1;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/pano/dialog/Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/photos/canvas/GalleryCanvasUtils$1;->val$getter:Lcom/android/photos/canvas/GalleryCanvasUtils$GetActions;

    invoke-interface {v0}, Lcom/android/photos/canvas/GalleryCanvasUtils$GetActions;->getActions()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 85
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/photos/canvas/GalleryCanvasUtils$1;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/pano/dialog/Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    iget-object v1, p0, Lcom/android/photos/canvas/GalleryCanvasUtils$1;->val$actionFragment:Lcom/google/android/pano/dialog/ActionFragment;

    invoke-virtual {v1}, Lcom/google/android/pano/dialog/ActionFragment;->getAdapter()Lcom/google/android/pano/widget/ScrollAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/dialog/ActionAdapter;

    .line 94
    .local v0, "adapter":Lcom/google/android/pano/dialog/ActionAdapter;
    invoke-virtual {v0, p1}, Lcom/google/android/pano/dialog/ActionAdapter;->setActions(Ljava/util/ArrayList;)V

    .line 95
    iget-boolean v1, p0, Lcom/android/photos/canvas/GalleryCanvasUtils$1;->val$setPosition:Z

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/photos/canvas/GalleryCanvasUtils$1;->val$actionFragment:Lcom/google/android/pano/dialog/ActionFragment;

    iget v2, p0, Lcom/android/photos/canvas/GalleryCanvasUtils$1;->val$position:I

    invoke-virtual {v1, v2}, Lcom/google/android/pano/dialog/ActionFragment;->setSelection(I)V

    .line 98
    :cond_0
    return-void
.end method
