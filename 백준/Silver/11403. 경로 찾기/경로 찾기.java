import java.io.*;
import java.util.*;

public class Main {

    private static int N;

    private static int path[][];

    private static BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

    private static BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

    public static void main(String[] args) throws IOException {
        N = Integer.parseInt(br.readLine());
        path = new int[N][N];

        for (int i = 0; i < N; i++) {
            StringTokenizer st = new StringTokenizer(br.readLine());
            for (int j = 0; j < N; j++) {
                path[i][j] = Integer.parseInt(st.nextToken());
            }
        }

        for (int k = 0; k < N; k++) {
            for (int i = 0; i < N; i++) {
                for (int j = 0; j < N; j++) {
                    if (path[i][k] == 1 && path[k][j] == 1) {
                        path[i][j] = 1;
                    }
                }
            }
        }

        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++) {
                sb.append(path[i][j]).append(" ");
            }
            sb.append("\n");
        }
        System.out.print(sb);
    }
}
