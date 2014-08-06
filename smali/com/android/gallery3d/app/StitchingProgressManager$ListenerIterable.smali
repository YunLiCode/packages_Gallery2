.class Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterable;
.super Ljava/lang/Object;
.source "StitchingProgressManager.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/StitchingProgressManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/android/gallery3d/app/StitchingChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/StitchingProgressManager;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/StitchingProgressManager;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterable;->this$0:Lcom/android/gallery3d/app/StitchingProgressManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/StitchingProgressManager;Lcom/android/gallery3d/app/StitchingProgressManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/gallery3d/app/StitchingProgressManager;
    .param p2, "x1"    # Lcom/android/gallery3d/app/StitchingProgressManager$1;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterable;-><init>(Lcom/android/gallery3d/app/StitchingProgressManager;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/gallery3d/app/StitchingChangeListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterator;

    iget-object v1, p0, Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterable;->this$0:Lcom/android/gallery3d/app/StitchingProgressManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/app/StitchingProgressManager$ListenerIterator;-><init>(Lcom/android/gallery3d/app/StitchingProgressManager;Lcom/android/gallery3d/app/StitchingProgressManager$1;)V

    return-object v0
.end method
