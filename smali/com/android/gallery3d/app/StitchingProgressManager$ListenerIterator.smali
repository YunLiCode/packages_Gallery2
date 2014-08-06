.class Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterator;
.super Ljava/lang/Object;
.source "StitchingProgressManager.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/StitchingProgressManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/android/gallery3d/app/StitchingChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field private mIndex:I

.field private mNext:Lcom/android/gallery3d/app/StitchingChangeListener;

.field final synthetic this$0:Lcom/android/gallery3d/app/StitchingProgressManager;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/StitchingProgressManager;)V
    .locals 1

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterator;->this$0:Lcom/android/gallery3d/app/StitchingProgressManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterator;->mIndex:I

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterator;->mNext:Lcom/android/gallery3d/app/StitchingChangeListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/StitchingProgressManager;Lcom/android/gallery3d/app/StitchingProgressManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/gallery3d/app/StitchingProgressManager;
    .param p2, "x1"    # Lcom/android/gallery3d/app/StitchingProgressManager$1;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterator;-><init>(Lcom/android/gallery3d/app/StitchingProgressManager;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 130
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterator;->mNext:Lcom/android/gallery3d/app/StitchingChangeListener;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterator;->mIndex:I

    iget-object v1, p0, Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterator;->this$0:Lcom/android/gallery3d/app/StitchingProgressManager;

    # getter for: Lcom/android/gallery3d/app/StitchingProgressManager;->mListenerRefs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/gallery3d/app/StitchingProgressManager;->access$200(Lcom/android/gallery3d/app/StitchingProgressManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterator;->this$0:Lcom/android/gallery3d/app/StitchingProgressManager;

    # getter for: Lcom/android/gallery3d/app/StitchingProgressManager;->mListenerRefs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/gallery3d/app/StitchingProgressManager;->access$200(Lcom/android/gallery3d/app/StitchingProgressManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterator;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/StitchingChangeListener;

    iput-object v0, p0, Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterator;->mNext:Lcom/android/gallery3d/app/StitchingChangeListener;

    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterator;->mNext:Lcom/android/gallery3d/app/StitchingChangeListener;

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterator;->this$0:Lcom/android/gallery3d/app/StitchingProgressManager;

    # getter for: Lcom/android/gallery3d/app/StitchingProgressManager;->mListenerRefs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/gallery3d/app/StitchingProgressManager;->access$200(Lcom/android/gallery3d/app/StitchingProgressManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterator;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterator;->mNext:Lcom/android/gallery3d/app/StitchingChangeListener;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public next()Lcom/android/gallery3d/app/StitchingChangeListener;
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterator;->hasNext()Z

    .line 142
    iget v1, p0, Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterator;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterator;->mIndex:I

    .line 143
    iget-object v0, p0, Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterator;->mNext:Lcom/android/gallery3d/app/StitchingChangeListener;

    .line 144
    .local v0, "next":Lcom/android/gallery3d/app/StitchingChangeListener;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterator;->mNext:Lcom/android/gallery3d/app/StitchingChangeListener;

    .line 145
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterator;->next()Lcom/android/gallery3d/app/StitchingChangeListener;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
