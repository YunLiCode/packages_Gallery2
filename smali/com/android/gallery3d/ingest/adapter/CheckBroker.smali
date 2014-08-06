.class public abstract Lcom/android/gallery3d/ingest/adapter/CheckBroker;
.super Ljava/lang/Object;
.source "CheckBroker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ingest/adapter/CheckBroker$OnCheckedChangedListener;
    }
.end annotation


# instance fields
.field private mListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/gallery3d/ingest/adapter/CheckBroker$OnCheckedChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ingest/adapter/CheckBroker;->mListeners:Ljava/util/Collection;

    .line 26
    return-void
.end method


# virtual methods
.method public abstract isItemChecked(I)Z
.end method

.method public onBulkCheckedChange()V
    .locals 3

    .prologue
    .line 42
    iget-object v2, p0, Lcom/android/gallery3d/ingest/adapter/CheckBroker;->mListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ingest/adapter/CheckBroker$OnCheckedChangedListener;

    .line 43
    .local v1, "l":Lcom/android/gallery3d/ingest/adapter/CheckBroker$OnCheckedChangedListener;
    invoke-interface {v1}, Lcom/android/gallery3d/ingest/adapter/CheckBroker$OnCheckedChangedListener;->onBulkCheckedChanged()V

    goto :goto_0

    .line 45
    .end local v1    # "l":Lcom/android/gallery3d/ingest/adapter/CheckBroker$OnCheckedChangedListener;
    :cond_0
    return-void
.end method

.method public onCheckedChange(IZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ingest/adapter/CheckBroker;->isItemChecked(I)Z

    move-result v2

    if-eq v2, p2, :cond_0

    .line 35
    iget-object v2, p0, Lcom/android/gallery3d/ingest/adapter/CheckBroker;->mListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ingest/adapter/CheckBroker$OnCheckedChangedListener;

    .line 36
    .local v1, "l":Lcom/android/gallery3d/ingest/adapter/CheckBroker$OnCheckedChangedListener;
    invoke-interface {v1, p1, p2}, Lcom/android/gallery3d/ingest/adapter/CheckBroker$OnCheckedChangedListener;->onCheckedChanged(IZ)V

    goto :goto_0

    .line 39
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Lcom/android/gallery3d/ingest/adapter/CheckBroker$OnCheckedChangedListener;
    :cond_0
    return-void
.end method

.method public registerOnCheckedChangeListener(Lcom/android/gallery3d/ingest/adapter/CheckBroker$OnCheckedChangedListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/gallery3d/ingest/adapter/CheckBroker$OnCheckedChangedListener;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/ingest/adapter/CheckBroker;->mListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public abstract setItemChecked(IZ)V
.end method

.method public unregisterOnCheckedChangeListener(Lcom/android/gallery3d/ingest/adapter/CheckBroker$OnCheckedChangedListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/gallery3d/ingest/adapter/CheckBroker$OnCheckedChangedListener;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/ingest/adapter/CheckBroker;->mListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method
