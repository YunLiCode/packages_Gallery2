.class Lcom/android/dreams/phototable/PhotoTable$SelectionReaper;
.super Ljava/lang/Object;
.source "PhotoTable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dreams/phototable/PhotoTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionReaper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dreams/phototable/PhotoTable;


# direct methods
.method constructor <init>(Lcom/android/dreams/phototable/PhotoTable;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoTable$SelectionReaper;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable$SelectionReaper;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v0}, Lcom/android/dreams/phototable/PhotoTable;->clearSelection()V

    .line 77
    return-void
.end method