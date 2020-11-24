module open_simplex_2.open_simplex_2;

/**
 * Interface defining methods common to OpenSimplex2 implementations.
 */
interface OpenSimplex2 {
    /**
     * 2D OpenSimplex2 noise, standard lattice orientation.
     */
    double noise2(double x, double y);

    /**
     * 2D OpenSimplex2 noise, with Y pointing down the main diagonal.
     * Might be better for a 2D sandbox style game, where Y is vertical.
     * Probably slightly less optimal for heightmaps or continent maps.
     */
    double noise2_XBeforeY(double x, double y);

    /**
     * 3D OpenSimplex2 noise, classic orientation.
     * Proper substitute for 3D Simplex in light of Forbidden Formulae.
     * Use noise3_XYBeforeZ or noise3_XZBeforeY instead, wherever appropriate.
     */
    double noise3_Classic(double x, double y, double z);

    /**
     * 3D OpenSimplex2 noise, with better visual isotropy in (X, Y).
     * Recommended for 3D terrain and time-varied animations.
     * The Z coordinate should always be the "different" coordinate in your use case.
     * If Y is vertical in world coordinates, call noise3_XYBeforeZ(x, z, Y) or use noise3_XZBeforeY.
     * If Z is vertical in world coordinates, call noise3_XYBeforeZ(x, y, Z).
     * For a time varied animation, call noise3_XYBeforeZ(x, y, T).
     */
    double noise3_XYBeforeZ(double x, double y, double z);

    /**
     * 3D OpenSimplex2 noise, with better visual isotropy in (X, Z).
     * Recommended for 3D terrain and time-varied animations.
     * The Y coordinate should always be the "different" coordinate in your use case.
     * If Y is vertical in world coordinates, call noise3_XZBeforeY(x, Y, z).
     * If Z is vertical in world coordinates, call noise3_XZBeforeY(x, Z, y) or use noise3_XYBeforeZ.
     * For a time varied animation, call noise3_XZBeforeY(x, T, y) or use noise3_XYBeforeZ.
     */
    double noise3_XZBeforeY(double x, double y, double z);

    /**
     * 4D OpenSimplex2 noise, classic lattice orientation.
     */
    double noise4_Classic(double x, double y, double z, double w);

    /**
     * 4D OpenSimplex2 noise, with XY and ZW forming orthogonal triangular-based planes.
     * Recommended for 3D terrain, where X and Y (or Z and W) are horizontal.
     * Recommended for noise(x, y, sin(time), cos(time)) trick.
     */
    double noise4_XYBeforeZW(double x, double y, double z, double w);

    /**
     * 4D OpenSimplex2 noise, with XZ and YW forming orthogonal triangular-based planes.
     * Recommended for 3D terrain, where X and Z (or Y and W) are horizontal.
     */
    double noise4_XZBeforeYW(double x, double y, double z, double w);

    /**
     * 4D OpenSimplex2 noise, with XYZ oriented like noise3_Classic,
     * and W for an extra degree of freedom. W repeats eventually.
     * Recommended for time-varied animations which texture a 3D object (W=time)
     */
    double noise4_XYZBeforeW(double x, double y, double z, double w);
}
