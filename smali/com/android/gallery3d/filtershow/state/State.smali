.class public Lcom/android/gallery3d/filtershow/state/State;
.super Ljava/lang/Object;
.source "State.java"


# instance fields
.field private mFilterRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

.field private mText:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/state/State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/gallery3d/filtershow/state/State;

    .prologue
    .line 27
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/state/State;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/state/State;->getType()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/state/State;-><init>(Ljava/lang/String;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 31
    sget v0, Lcom/android/gallery3d/filtershow/state/StateView;->DEFAULT:I

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/filtershow/state/State;-><init>(Ljava/lang/String;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/state/State;->mText:Ljava/lang/String;

    .line 36
    iput p2, p0, Lcom/android/gallery3d/filtershow/state/State;->mType:I

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Lcom/android/gallery3d/filtershow/state/State;)Z
    .locals 2
    .param p1, "state"    # Lcom/android/gallery3d/filtershow/state/State;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/State;->mFilterRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p1, Lcom/android/gallery3d/filtershow/state/State;->mFilterRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 44
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getFilterRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/State;->mFilterRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    return-object v0
.end method

.method getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/State;->mText:Ljava/lang/String;

    return-object v0
.end method

.method getType()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/android/gallery3d/filtershow/state/State;->mType:I

    return v0
.end method

.method public isDraggable()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/State;->mFilterRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFilterRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 0
    .param p1, "filterRepresentation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/state/State;->mFilterRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 73
    return-void
.end method
