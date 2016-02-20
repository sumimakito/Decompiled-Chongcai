.class public Lcn/apppark/vertify/activity/free/self/Ball720;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field public mAngleX:F

.field public mAngleY:F

.field public mAngleZ:F

.field private mNormalBuffer:Ljava/nio/IntBuffer;

.field private mTextureBuffer:Ljava/nio/FloatBuffer;

.field private mVertexBuffer:Ljava/nio/IntBuffer;


# direct methods
.method public constructor <init>(II)V
    .locals 25

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcn/apppark/vertify/activity/free/self/Ball720;->a:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcn/apppark/vertify/activity/free/self/Ball720;->b:I

    const/16 v2, 0x20

    const/16 v3, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcn/apppark/vertify/activity/free/self/Ball720;->generateTexCoor(II)[F

    move-result-object v5

    const/4 v3, 0x0

    array-length v6, v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/high16 v2, 0x42b40000    # 90.0f

    move v4, v2

    :goto_0
    const/high16 v2, -0x3d4c0000    # -90.0f

    cmpl-float v2, v4, v2

    if-lez v2, :cond_1

    const/high16 v2, 0x43b40000    # 360.0f

    :goto_1
    const/4 v9, 0x0

    cmpl-float v9, v2, v9

    if-lez v9, :cond_0

    move/from16 v0, p1

    mul-int/lit16 v9, v0, 0x2710

    int-to-double v9, v9

    float-to-double v11, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    float-to-double v11, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v9

    double-to-int v11, v11

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v9, v12

    double-to-int v9, v9

    move/from16 v0, p1

    mul-int/lit16 v10, v0, 0x2710

    int-to-double v12, v10

    float-to-double v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-int v10, v12

    move/from16 v0, p1

    mul-int/lit16 v12, v0, 0x2710

    int-to-double v12, v12

    const/high16 v14, 0x41340000    # 11.25f

    sub-float v14, v4, v14

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v12

    double-to-int v14, v14

    float-to-double v15, v2

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v12, v15

    double-to-int v12, v12

    move/from16 v0, p1

    mul-int/lit16 v13, v0, 0x2710

    int-to-double v15, v13

    const/high16 v13, 0x41340000    # 11.25f

    sub-float v13, v4, v13

    float-to-double v0, v13

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v15, v15, v17

    double-to-int v13, v15

    move/from16 v0, p1

    mul-int/lit16 v15, v0, 0x2710

    int-to-double v15, v15

    const/high16 v17, 0x41340000    # 11.25f

    sub-float v17, v4, v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v15, v15, v17

    const/high16 v17, 0x41340000    # 11.25f

    sub-float v17, v2, v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v17, v17, v15

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x41340000    # 11.25f

    sub-float v18, v2, v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v15, v15, v18

    double-to-int v15, v15

    move/from16 v0, p1

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const/high16 v16, 0x41340000    # 11.25f

    sub-float v16, v4, v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, p1

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    float-to-double v0, v4

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    const/high16 v20, 0x41340000    # 11.25f

    sub-float v20, v2, v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v20, v20, v18

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x41340000    # 11.25f

    sub-float v21, v2, v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    mul-double v18, v18, v21

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, p1

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v21, v0

    float-to-double v0, v4

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    mul-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v19, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v3, 0x1

    rem-int/2addr v3, v6

    aget v3, v5, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v9, 0x1

    rem-int/2addr v9, v6

    aget v9, v5, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v3, 0x1

    rem-int/2addr v3, v6

    aget v3, v5, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v9, 0x1

    rem-int/2addr v9, v6

    aget v9, v5, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v3, 0x1

    rem-int/2addr v3, v6

    aget v3, v5, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v9, 0x1

    rem-int/2addr v9, v6

    aget v9, v5, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v3, 0x1

    rem-int/2addr v3, v6

    aget v3, v5, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v9, 0x1

    rem-int/2addr v9, v6

    aget v9, v5, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v3, 0x1

    rem-int/2addr v3, v6

    aget v3, v5, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v9, 0x1

    rem-int/2addr v9, v6

    aget v9, v5, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v3, 0x1

    rem-int/2addr v3, v6

    aget v3, v5, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v9, 0x1

    rem-int/2addr v9, v6

    aget v9, v5, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v9, 0x41340000    # 11.25f

    sub-float/2addr v2, v9

    goto/16 :goto_1

    :cond_0
    const/high16 v2, 0x41340000    # 11.25f

    sub-float v2, v4, v2

    move v4, v2

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcn/apppark/vertify/activity/free/self/Ball720;->a:I

    move-object/from16 v0, p0

    iget v2, v0, Lcn/apppark/vertify/activity/free/self/Ball720;->a:I

    mul-int/lit8 v2, v2, 0x3

    new-array v4, v2, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v4, v3

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_2
    array-length v2, v4

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/apppark/vertify/activity/free/self/Ball720;->mVertexBuffer:Ljava/nio/IntBuffer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/apppark/vertify/activity/free/self/Ball720;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/apppark/vertify/activity/free/self/Ball720;->mVertexBuffer:Ljava/nio/IntBuffer;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    array-length v3, v4

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/apppark/vertify/activity/free/self/Ball720;->mNormalBuffer:Ljava/nio/IntBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/apppark/vertify/activity/free/self/Ball720;->mNormalBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/apppark/vertify/activity/free/self/Ball720;->mNormalBuffer:Ljava/nio/IntBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v4, v2, [F

    const/4 v2, 0x0

    move v3, v2

    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v4, v3

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    :cond_3
    array-length v2, v4

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/apppark/vertify/activity/free/self/Ball720;->mTextureBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/apppark/vertify/activity/free/self/Ball720;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/apppark/vertify/activity/free/self/Ball720;->mTextureBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public drawSelf(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6

    const/16 v5, 0x140c

    const/16 v4, 0xde1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget v0, p0, Lcn/apppark/vertify/activity/free/self/Ball720;->mAngleZ:F

    invoke-interface {p1, v0, v1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    iget v0, p0, Lcn/apppark/vertify/activity/free/self/Ball720;->mAngleX:F

    invoke-interface {p1, v0, v2, v1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    iget v0, p0, Lcn/apppark/vertify/activity/free/self/Ball720;->mAngleY:F

    invoke-interface {p1, v0, v1, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/self/Ball720;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v5, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    const v0, 0x8075

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/self/Ball720;->mNormalBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v5, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const/4 v0, 0x2

    const/16 v1, 0x1406

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/self/Ball720;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    iget v0, p0, Lcn/apppark/vertify/activity/free/self/Ball720;->b:I

    invoke-interface {p1, v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    const/4 v0, 0x4

    iget v1, p0, Lcn/apppark/vertify/activity/free/self/Ball720;->a:I

    invoke-interface {p1, v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    return-void
.end method

.method public generateTexCoor(II)[F
    .locals 11

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [F

    int-to-float v0, p1

    div-float v5, v2, v0

    int-to-float v0, p2

    div-float v6, v2, v0

    move v3, v1

    move v0, v1

    :goto_0
    if-ge v3, p2, :cond_1

    move v2, v0

    move v0, v1

    :goto_1
    if-ge v0, p1, :cond_0

    int-to-float v7, v0

    mul-float/2addr v7, v5

    int-to-float v8, v3

    mul-float/2addr v8, v6

    add-int/lit8 v9, v2, 0x1

    aput v7, v4, v2

    add-int/lit8 v2, v9, 0x1

    aput v8, v4, v9

    add-int/lit8 v9, v2, 0x1

    aput v7, v4, v2

    add-int/lit8 v2, v9, 0x1

    add-float v10, v8, v6

    aput v10, v4, v9

    add-int/lit8 v9, v2, 0x1

    add-float v10, v7, v5

    aput v10, v4, v2

    add-int/lit8 v2, v9, 0x1

    aput v8, v4, v9

    add-int/lit8 v9, v2, 0x1

    add-float v10, v7, v5

    aput v10, v4, v2

    add-int/lit8 v2, v9, 0x1

    aput v8, v4, v9

    add-int/lit8 v9, v2, 0x1

    aput v7, v4, v2

    add-int/lit8 v2, v9, 0x1

    add-float v10, v8, v6

    aput v10, v4, v9

    add-int/lit8 v9, v2, 0x1

    add-float/2addr v7, v5

    aput v7, v4, v2

    add-int/lit8 v2, v9, 0x1

    add-float v7, v8, v6

    aput v7, v4, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public increaseX(F)V
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/self/Ball720;->mAngleX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcn/apppark/vertify/activity/free/self/Ball720;->mAngleX:F

    return-void
.end method

.method public increaseY(F)V
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/self/Ball720;->mAngleY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcn/apppark/vertify/activity/free/self/Ball720;->mAngleY:F

    return-void
.end method

.method public increaseZ(F)V
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/self/Ball720;->mAngleZ:F

    add-float/2addr v0, p1

    iput v0, p0, Lcn/apppark/vertify/activity/free/self/Ball720;->mAngleZ:F

    return-void
.end method

.method public subtractX(F)V
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/self/Ball720;->mAngleX:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcn/apppark/vertify/activity/free/self/Ball720;->mAngleX:F

    return-void
.end method

.method public subtractY(F)V
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/self/Ball720;->mAngleY:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcn/apppark/vertify/activity/free/self/Ball720;->mAngleY:F

    return-void
.end method

.method public subtractZ(F)V
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/activity/free/self/Ball720;->mAngleZ:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcn/apppark/vertify/activity/free/self/Ball720;->mAngleZ:F

    return-void
.end method
