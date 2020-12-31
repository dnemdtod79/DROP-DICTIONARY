        <div class="card my-3 box-shadow">
          <h5 class="card-header bg-pink">The Most searched words!</h5>
          <div class="card-body px-4">
            <div class="row">
              <div class="col-12">
                <ul class="list-unstyled mb-0">
                  <?php

                    $sqlTrend = " SELECT word FROM definitions ORDER BY hits DESC LIMIT 10 ";
                    $resultTrend = mysqli_query($conn, $sqlTrend);
                    $trendNum = 1;

                    while($rowTrend = mysqli_fetch_array($resultTrend)){
                      $trendingWord = htmlspecialchars($rowTrend['word']);
                        echo "<li class='mb-2 text-110'>".$trendNum.". <a href='definitions.php?term={$trendingWord}'>".$trendingWord."</a></li>";
                      $trendNum++;
                    }

                  ?>
                </ul>
              </div>
            </div>
          </div>
        </div>

        <div class="card my-3 box-shadow">
          <div class="card-body">
            
          </div>
        </div>

        <div class="card mt-3 box-shadow">
          <h5 class="card-header bg-sky">Latest defined words</h5>
          <div class="card-body py-3 px-4">
            <ul class="list-unstyled mb-0">
              <?php 

              $sqlLatest = " SELECT word, date FROM definitions ORDER BY DATE DESC LIMIT 10 ";
              $resultLatest = mysqli_query($conn, $sqlLatest);

              while($rowLatest = mysqli_fetch_array($resultLatest)){

                $specialFiltered = array(
                 'word' => htmlspecialchars($rowLatest['word']),
                 'date' => htmlspecialchars($rowLatest['date'])
                ); 

                echo "<li><a href='definitions.php?term={$specialFiltered['word']}'>".$specialFiltered['word']."</a> <span class='badge badge-warning'>New</span></li>";
                echo "<li class='mb-2 font-90'>".$specialFiltered['date']."</li>";
                echo "<hr class='my-2'>";
              }

               ?>
            </ul>
          </div>
        </div>