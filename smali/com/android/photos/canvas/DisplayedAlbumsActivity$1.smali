.class Lcom/android/photos/canvas/DisplayedAlbumsActivity$1;
.super Ljava/lang/Object;
.source "DisplayedAlbumsActivity.java"

# interfaces
.implements Lcom/android/photos/canvas/GalleryCanvasUtils$GetActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/photos/canvas/DisplayedAlbumsActivity;->onActionClicked(Lcom/google/android/pano/dialog/Action;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/photos/canvas/DisplayedAlbumsActivity;

.field final synthetic val$action:Lcom/google/android/pano/dialog/Action;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/photos/canvas/DisplayedAlbumsActivity;Lcom/google/android/pano/dialog/Action;I)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity$1;->this$0:Lcom/android/photos/canvas/DisplayedAlbumsActivity;

    iput-object p2, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity$1;->val$action:Lcom/google/android/pano/dialog/Action;

    iput p3, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity$1;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActions()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/pano/dialog/Action;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 138
    iget-object v5, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity$1;->this$0:Lcom/android/photos/canvas/DisplayedAlbumsActivity;

    # getter for: Lcom/android/photos/canvas/DisplayedAlbumsActivity;->mActionFragment:Lcom/google/android/pano/dialog/ActionFragment;
    invoke-static {v5}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->access$000(Lcom/android/photos/canvas/DisplayedAlbumsActivity;)Lcom/google/android/pano/dialog/ActionFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/pano/dialog/ActionFragment;->getAdapter()Lcom/google/android/pano/widget/ScrollAdapter;

    move-result-object v1

    check-cast v1, Lcom/google/android/pano/dialog/ActionAdapter;

    .line 139
    .local v1, "adapter":Lcom/google/android/pano/dialog/ActionAdapter;
    invoke-virtual {v1}, Lcom/google/android/pano/dialog/ActionAdapter;->getActions()Ljava/util/ArrayList;

    move-result-object v0

    .line 140
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    const-string v5, "all albums"

    iget-object v8, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity$1;->val$action:Lcom/google/android/pano/dialog/Action;

    invoke-virtual {v8}, Lcom/google/android/pano/dialog/Action;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 141
    iget-object v5, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity$1;->this$0:Lcom/android/photos/canvas/DisplayedAlbumsActivity;

    # invokes: Lcom/android/photos/canvas/DisplayedAlbumsActivity;->changeAllShown(Ljava/util/ArrayList;Z)V
    invoke-static {v5, v0, v6}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->access$100(Lcom/android/photos/canvas/DisplayedAlbumsActivity;Ljava/util/ArrayList;Z)V

    .line 151
    :goto_0
    return-object v0

    .line 142
    :cond_0
    const-string v5, "no albums"

    iget-object v8, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity$1;->val$action:Lcom/google/android/pano/dialog/Action;

    invoke-virtual {v8}, Lcom/google/android/pano/dialog/Action;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 143
    iget-object v5, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity$1;->this$0:Lcom/android/photos/canvas/DisplayedAlbumsActivity;

    # invokes: Lcom/android/photos/canvas/DisplayedAlbumsActivity;->changeAllShown(Ljava/util/ArrayList;Z)V
    invoke-static {v5, v0, v7}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->access$100(Lcom/android/photos/canvas/DisplayedAlbumsActivity;Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v5, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity$1;->val$action:Lcom/google/android/pano/dialog/Action;

    # invokes: Lcom/android/photos/canvas/DisplayedAlbumsActivity;->getAlbumId(Lcom/google/android/pano/dialog/Action;)J
    invoke-static {v5}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->access$200(Lcom/google/android/pano/dialog/Action;)J

    move-result-wide v2

    .line 146
    .local v2, "albumId":J
    iget-object v5, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity$1;->val$action:Lcom/google/android/pano/dialog/Action;

    # invokes: Lcom/android/photos/canvas/DisplayedAlbumsActivity;->isShown(Lcom/google/android/pano/dialog/Action;)Z
    invoke-static {v5}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->access$300(Lcom/google/android/pano/dialog/Action;)Z

    move-result v4

    .line 147
    .local v4, "wasShown":Z
    iget-object v8, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity$1;->this$0:Lcom/android/photos/canvas/DisplayedAlbumsActivity;

    if-nez v4, :cond_2

    move v5, v6

    :goto_1
    # invokes: Lcom/android/photos/canvas/DisplayedAlbumsActivity;->changeAlbumVisibility(JZ)V
    invoke-static {v8, v2, v3, v5}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->access$400(Lcom/android/photos/canvas/DisplayedAlbumsActivity;JZ)V

    .line 148
    iget v5, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity$1;->val$position:I

    iget-object v8, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity$1;->val$action:Lcom/google/android/pano/dialog/Action;

    invoke-virtual {v8}, Lcom/google/android/pano/dialog/Action;->getTitle()Ljava/lang/String;

    move-result-object v8

    if-nez v4, :cond_3

    :goto_2
    # invokes: Lcom/android/photos/canvas/DisplayedAlbumsActivity;->createAction(JLjava/lang/String;Z)Lcom/google/android/pano/dialog/Action;
    invoke-static {v2, v3, v8, v6}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->access$500(JLjava/lang/String;Z)Lcom/google/android/pano/dialog/Action;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v5, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity$1;->this$0:Lcom/android/photos/canvas/DisplayedAlbumsActivity;

    # invokes: Lcom/android/photos/canvas/DisplayedAlbumsActivity;->allShown(Ljava/util/ArrayList;)Z
    invoke-static {v0}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->access$600(Ljava/util/ArrayList;)Z

    move-result v6

    # invokes: Lcom/android/photos/canvas/DisplayedAlbumsActivity;->createSelectAllAction(Z)Lcom/google/android/pano/dialog/Action;
    invoke-static {v5, v6}, Lcom/android/photos/canvas/DisplayedAlbumsActivity;->access$700(Lcom/android/photos/canvas/DisplayedAlbumsActivity;Z)Lcom/google/android/pano/dialog/Action;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move v5, v7

    .line 147
    goto :goto_1

    :cond_3
    move v6, v7

    .line 148
    goto :goto_2
.end method
