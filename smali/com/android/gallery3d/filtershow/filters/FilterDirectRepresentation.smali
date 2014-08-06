.class public Lcom/android/gallery3d/filtershow/filters/FilterDirectRepresentation;
.super Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
.source "FilterDirectRepresentation.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method public isNil()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method
