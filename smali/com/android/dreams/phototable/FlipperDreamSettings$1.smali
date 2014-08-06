.class Lcom/android/dreams/phototable/FlipperDreamSettings$1;
.super Landroid/os/AsyncTask;
.source "FlipperDreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dreams/phototable/FlipperDreamSettings;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dreams/phototable/FlipperDreamSettings;


# direct methods
.method constructor <init>(Lcom/android/dreams/phototable/FlipperDreamSettings;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/dreams/phototable/FlipperDreamSettings$1;->this$0:Lcom/android/dreams/phototable/FlipperDreamSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 66
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/FlipperDreamSettings$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "unused"    # [Ljava/lang/Void;

    .prologue
    .line 69
    iget-object v6, p0, Lcom/android/dreams/phototable/FlipperDreamSettings$1;->this$0:Lcom/android/dreams/phototable/FlipperDreamSettings;

    new-instance v0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;

    iget-object v1, p0, Lcom/android/dreams/phototable/FlipperDreamSettings$1;->this$0:Lcom/android/dreams/phototable/FlipperDreamSettings;

    iget-object v2, p0, Lcom/android/dreams/phototable/FlipperDreamSettings$1;->this$0:Lcom/android/dreams/phototable/FlipperDreamSettings;

    iget-object v2, v2, Lcom/android/dreams/phototable/FlipperDreamSettings;->mSettings:Landroid/content/SharedPreferences;

    const v3, 0x7f040046

    const v4, 0x7f04000a

    new-instance v5, Ljava/util/LinkedList;

    iget-object v7, p0, Lcom/android/dreams/phototable/FlipperDreamSettings$1;->this$0:Lcom/android/dreams/phototable/FlipperDreamSettings;

    # getter for: Lcom/android/dreams/phototable/FlipperDreamSettings;->mPhotoSource:Lcom/android/dreams/phototable/PhotoSourcePlexor;
    invoke-static {v7}, Lcom/android/dreams/phototable/FlipperDreamSettings;->access$100(Lcom/android/dreams/phototable/FlipperDreamSettings;)Lcom/android/dreams/phototable/PhotoSourcePlexor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/dreams/phototable/PhotoSourcePlexor;->findAlbums()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;IILjava/util/List;)V

    # setter for: Lcom/android/dreams/phototable/FlipperDreamSettings;->mAdapter:Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;
    invoke-static {v6, v0}, Lcom/android/dreams/phototable/FlipperDreamSettings;->access$002(Lcom/android/dreams/phototable/FlipperDreamSettings;Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;)Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 66
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/FlipperDreamSettings$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "unused"    # Ljava/lang/Void;

    .prologue
    const/4 v0, 0x1

    .line 79
    iget-object v1, p0, Lcom/android/dreams/phototable/FlipperDreamSettings$1;->this$0:Lcom/android/dreams/phototable/FlipperDreamSettings;

    # getter for: Lcom/android/dreams/phototable/FlipperDreamSettings;->mAdapter:Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;
    invoke-static {v1}, Lcom/android/dreams/phototable/FlipperDreamSettings;->access$000(Lcom/android/dreams/phototable/FlipperDreamSettings;)Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;

    move-result-object v1

    new-instance v2, Lcom/android/dreams/phototable/FlipperDreamSettings$1$1;

    invoke-direct {v2, p0}, Lcom/android/dreams/phototable/FlipperDreamSettings$1$1;-><init>(Lcom/android/dreams/phototable/FlipperDreamSettings$1;)V

    invoke-virtual {v1, v2}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 89
    iget-object v1, p0, Lcom/android/dreams/phototable/FlipperDreamSettings$1;->this$0:Lcom/android/dreams/phototable/FlipperDreamSettings;

    iget-object v2, p0, Lcom/android/dreams/phototable/FlipperDreamSettings$1;->this$0:Lcom/android/dreams/phototable/FlipperDreamSettings;

    # getter for: Lcom/android/dreams/phototable/FlipperDreamSettings;->mAdapter:Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;
    invoke-static {v2}, Lcom/android/dreams/phototable/FlipperDreamSettings;->access$000(Lcom/android/dreams/phototable/FlipperDreamSettings;)Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dreams/phototable/FlipperDreamSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    iget-object v1, p0, Lcom/android/dreams/phototable/FlipperDreamSettings$1;->this$0:Lcom/android/dreams/phototable/FlipperDreamSettings;

    invoke-virtual {v1}, Lcom/android/dreams/phototable/FlipperDreamSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 91
    iget-object v1, p0, Lcom/android/dreams/phototable/FlipperDreamSettings$1;->this$0:Lcom/android/dreams/phototable/FlipperDreamSettings;

    # invokes: Lcom/android/dreams/phototable/FlipperDreamSettings;->updateActionItem()V
    invoke-static {v1}, Lcom/android/dreams/phototable/FlipperDreamSettings;->access$200(Lcom/android/dreams/phototable/FlipperDreamSettings;)V

    .line 92
    iget-object v1, p0, Lcom/android/dreams/phototable/FlipperDreamSettings$1;->this$0:Lcom/android/dreams/phototable/FlipperDreamSettings;

    iget-object v2, p0, Lcom/android/dreams/phototable/FlipperDreamSettings$1;->this$0:Lcom/android/dreams/phototable/FlipperDreamSettings;

    # getter for: Lcom/android/dreams/phototable/FlipperDreamSettings;->mAdapter:Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;
    invoke-static {v2}, Lcom/android/dreams/phototable/FlipperDreamSettings;->access$000(Lcom/android/dreams/phototable/FlipperDreamSettings;)Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    # invokes: Lcom/android/dreams/phototable/FlipperDreamSettings;->showApology(Z)V
    invoke-static {v1, v0}, Lcom/android/dreams/phototable/FlipperDreamSettings;->access$300(Lcom/android/dreams/phototable/FlipperDreamSettings;Z)V

    .line 93
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
