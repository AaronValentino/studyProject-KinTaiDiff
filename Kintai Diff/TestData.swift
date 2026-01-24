//
//  TestData.swift
//  Kintai Diff
//
//  Created by アーロンヴァレンティノ on 2025/08/04.
//

import Foundation

let htmlData =
    """
    <!doctype html>
    <html lang="en">
      <body>
        



    <input style="width: 60em; border:none; outline: none;" type='text' value='https://hibi.i3-systems.com/summary?start=2025-07-01&end=2025-07-31&user_id=303' onclick="this.select()" readonly='readonly' />

    <table class="table">
      <thead>
        <tr>
          <th scope="col">DATE</th>
          <th scope="col">日々報</th>
          <th scope="col">新勤怠</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row">2025-07-31</th>
          <td>
          
          <p>09:51～15:15</p>
          <ul>

            <li>[PD1302|自社 iOS MDM 宣言型デバイス管理_MDM_Agent_iOS_開発_minor|管理業務] 管理業務 <b>00:09</b></li>


            <li>[PD1302|自社 iOS MDM 宣言型デバイス管理_MDM_Agent_iOS_開発_minor|研究調査] 宣言型デバイス管理の調査 <b>04:50</b></li>


            <li>[PD1302|自社 iOS MDM 宣言型デバイス管理_MDM_Agent_iOS_開発_minor|会議/外部対応] 朝会 <b>00:25</b></li>

          </ul>
          <p><b>合計: 5h24m</b></p>
          
          
          </td>
          <td>
          
          <p>09:51 ~ 15:15</p>
      
          <p><b>合計 +5h24m</b></p>
          
          <br />
          
          </td>
        </tr>
        <tr>
          <th scope="row">2025-07-30</th>
          <td>
          
          <p>10:02～17:30</p>
          <ul>

            <li>[CO9997|自社 全社_有給・時間給_oh] 午前休 <b>04:00</b></li>


            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|実装/開発（α開発）] CLOMO-24494 <b>02:16</b></li>


            <li>[PD1302|自社 iOS MDM 宣言型デバイス管理_MDM_Agent_iOS_開発_minor|企画/設計] iOS 18.4のManagedApp新機能調査 <b>01:12</b></li>

          </ul>
          <p><b>合計: 7h28m</b></p>
          
          
          </td>
          <td>
          
          <p>14:02 ~ 17:31</p>
      
          <p><b>合計 +7h28m</b></p>
          
          <br />
          
          </td>
        </tr>
        <tr>
          <th scope="row">2025-07-29</th>
          <td>
          
          <p>07:03～15:22</p>
          <ul>

            <li>[PM9996|自社 製品戦略検討・調査_pm] 管理業務 <b>00:10</b></li>


            <li>[PD1302|自社 iOS MDM 宣言型デバイス管理_MDM_Agent_iOS_開発_minor|研究調査] iOS 18.4のManagedApp新機能調査 <b>06:29</b></li>


            <li>[PM9996|自社 製品戦略検討・調査_pm] 朝会 <b>00:10</b></li>


            <li>[OM8014] 製品開発部定例会議 <b>00:30</b></li>

          </ul>
          <p><b>合計: 7h19m</b></p>
          
          
          </td>
          <td>
          
          <p>07:03 ~ 15:22</p>
      
          <p><b>合計 +7h19m</b></p>
          
          <br />
          
          </td>
        </tr>
        <tr>
          <th scope="row">2025-07-28</th>
          <td>
          
          <p>09:49～15:01</p>
          <ul>

            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|管理業務] 管理業務 <b>00:11</b></li>


            <li>[CO9999] 全社週次朝礼 <b>00:07</b></li>


            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|実装/開発（α開発）] CLOMO-24494 <b>04:24</b></li>


            <li>[PD1302|自社 iOS MDM 宣言型デバイス管理_MDM_Agent_iOS_開発_minor|会議/外部対応] iOS MDM チーム作戦会議 <b>00:30</b></li>

          </ul>
          <p><b>合計: 5h12m</b></p>
          
          
          </td>
          <td>
          
          <p>09:49 ~ 15:01</p>
      
          <p><b>合計 +5h12m</b></p>
          
          <br />
          
          </td>
        </tr>
        <tr>
          <th scope="row">2025-07-25</th>
          <td>
          
          <p>09:26～17:32</p>
          <ul>

            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|管理業務] 管理業務 <b>00:04</b></li>


            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|会議/外部対応] 朝会 <b>00:12</b></li>


            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|実装/開発（α開発）] CLOMO-24494 <b>06:21</b></li>

          </ul>
          <p><b>合計: 6h37m</b></p>
          
          
          </td>
          <td>
          
          <p>09:26 ~ 17:32</p>
      
          <p>休憩 -0h29m</p>
      
          <p><b>合計 +6h37m</b></p>
          
          <br />
          
          </td>
        </tr>
        <tr>
          <th scope="row">2025-07-24</th>
          <td>
          
          <p>09:25～20:20</p>
          <ul>

            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|管理業務] 管理業務 <b>00:05</b></li>


            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|会議/外部対応] 朝会 <b>00:09</b></li>


            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|実装/開発（α開発）] CLOMO-24493 <b>04:59</b></li>


            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|レビュー] CLOMO-24519 <b>00:22</b></li>


            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|実装/開発（α開発）] CLOMO-24494 <b>04:03</b></li>

          </ul>
          <p><b>合計: 9h38m</b></p>
          
          
          </td>
          <td>
          
          <p>09:25 ~ 20:20</p>
      
          <p>休憩 -0h17m</p>
      
          <p><b>合計 +9h38m</b></p>
          
          <br />
          
          </td>
        </tr>
        <tr>
          <th scope="row">2025-07-23</th>
          <td>
          
          <p>06:45～19:15</p>
          <ul>

            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|管理業務] 管理業務 <b>00:10</b></li>


            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|実装/開発（α開発）]  CLOMO-24493 <b>06:10</b></li>


            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|会議/外部対応] 朝会 <b>00:52</b></li>


            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|実装/開発（α開発）] CLOMO-24494 <b>04:18</b></li>

          </ul>
          <p><b>合計: 11h30m</b></p>
          
          
          </td>
          <td>
          
          <p>06:45 ~ 19:15</p>
      
          <p><b>合計 +11h30m</b></p>
          
          <br />
          
          </td>
        </tr>
        <tr>
          <th scope="row">2025-07-22</th>
          <td>
          
          <p>06:38～16:16</p>
          <ul>

            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|管理業務] 管理業務 <b>00:13</b></li>


            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|実装/開発（α開発）] CLOMO-24494 <b>05:11</b></li>


            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|会議/外部対応] 朝会 <b>00:11</b></li>


            <li>[CO9999] 全社週次朝礼 <b>00:06</b></li>


            <li>[PM9983|自社 プロジェクト管理・改善_開発部門サポート_pj] PMO相談室 <b>01:43</b></li>


            <li>[OM8014] 製品開発部定例会議 <b>00:15</b></li>


            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|実装/開発（α開発）]  CLOMO-24493 <b>00:59</b></li>

          </ul>
          <p><b>合計: 8h38m</b></p>
          
          
          </td>
          <td>
          
          <p>06:38 ~ 16:16</p>
      
          <p><b>合計 +8h38m</b></p>
          
          <br />
          
          </td>
        </tr>
        <tr>
          <th scope="row">2025-07-18</th>
          <td>
          
          <p>08:02～18:48</p>
          <ul>

            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|管理業務] 管理業務 <b>00:04</b></li>


            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|実装/開発（α開発）] CLOMO-24494 <b>04:19</b></li>


            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|会議/外部対応] 朝会 <b>00:40</b></li>


            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|実装/開発（α開発）] CLOMO-24493 <b>04:05</b></li>


            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|レビュー] CLOMO-24434 <b>00:38</b></li>

          </ul>
          <p><b>合計: 9h46m</b></p>
          
          
          </td>
          <td>
          
          <p>08:02 ~ 18:48</p>
      
          <p><b>合計 +9h46m</b></p>
          
          <br />
          
          </td>
        </tr>
        <tr>
          <th scope="row">2025-07-17</th>
          <td>
          
          <p>08:14～17:47</p>
          <ul>

            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|管理業務] 管理業務 <b>00:03</b></li>


            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|実装/開発（α開発）] CLOMO-24493 <b>08:13</b></li>


            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|会議/外部対応] 朝会 <b>00:17</b></li>

          </ul>
          <p><b>合計: 8h33m</b></p>
          
          
          </td>
          <td>
          
          <p>08:14 ~ 17:47</p>
      
          <p><b>合計 +8h33m</b></p>
          
          <br />
          
          </td>
        </tr>
        <tr>
          <th scope="row">2025-07-16</th>
          <td>
          
          <p>06:59～18:21</p>
          <ul>

            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|管理業務] 管理業務 <b>00:04</b></li>


            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|実装/開発（α開発）]  CLOMO-24493 <b>07:06</b></li>


            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|会議/外部対応] 朝会 <b>00:20</b></li>


            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|レビュー] CLOMO-24434 <b>02:52</b></li>

          </ul>
          <p><b>合計: 10h22m</b></p>
          
          
          </td>
          <td>
          
          <p>06:59 ~ 18:21</p>
      
          <p><b>合計 +10h22m</b></p>
          
          <br />
          
          </td>
        </tr>
        <tr>
          <th scope="row">2025-07-15</th>
          <td>
          
          <p>06:23～16:00</p>
          <ul>

            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|管理業務] 管理業務 <b>00:04</b></li>


            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|実装/開発（α開発）]  CLOMO-24493 <b>07:08</b></li>


            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|会議/外部対応] 朝会 <b>00:07</b></li>


            <li>[OM8014] 【社内】CLOMO事業本部全体会議(1時間拡大版) <b>00:51</b></li>


            <li>[OM8014] 製品開発部定例会議 <b>00:27</b></li>

          </ul>
          <p><b>合計: 8h37m</b></p>
          
          
          </td>
          <td>
          
          <p>06:23 ~ 16:00</p>
      
          <p><b>合計 +8h37m</b></p>
          
          <br />
          
          </td>
        </tr>
        <tr>
          <th scope="row">2025-07-14</th>
          <td>
          
          <p>08:55～17:26</p>
          <ul>

            <li>[PM9996|自社 製品戦略検討・調査_pm] 管理業務 <b>00:05</b></li>


            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|会議/外部対応] 朝会 <b>00:10</b></li>


            <li>[PD1240|自社 .NETからSwiftへの移行_MDM_Agent_iOS_開発_revision|実装/開発（α開発）] CLOMO-24493 <b>07:10</b></li>


            <li>[CO9999] 全社週次朝礼 <b>00:06</b></li>

          </ul>
          <p><b>合計: 7h31m</b></p>
          
          
          </td>
          <td>
          
          <p>08:55 ~ 17:26</p>
      
          <p><b>合計 +7h31m</b></p>
          
          <br />
          
          </td>
        </tr>
        <tr>
          <th scope="row">2025-07-11</th>
          <td>
          
          <p>09:56～18:09</p>
          <ul>

            <li>[PM9996|自社 製品戦略検討・調査_pm] 管理業務 <b>00:11</b></li>


            <li>[PM9996|自社 製品戦略検討・調査_pm] iOS 18.4のManagedApp新機能調査 <b>06:02</b></li>


            <li>[PM9996|自社 製品戦略検討・調査_pm] 夕会 <b>00:02</b></li>

          </ul>
          <p><b>合計: 6h15m</b></p>
          
          
          </td>
          <td>
          
          <p>09:56 ~ 18:09</p>
      
          <p>休憩 -0h58m</p>
      
          <p><b>合計 +6h15m</b></p>
          
          <br />
          
          </td>
        </tr>
        <tr>
          <th scope="row">2025-07-10</th>
          <td>
          
          <p>09:27～17:02</p>
          <ul>

            <li>[PM9996|自社 製品戦略検討・調査_pm] 管理業務 <b>00:08</b></li>


            <li>[PM9996|自社 製品戦略検討・調査_pm] iOS 18.4のManagedApp新機能調査 <b>05:49</b></li>


            <li>[PM9996|自社 製品戦略検討・調査_pm] 夕会 <b>00:05</b></li>

          </ul>
          <p><b>合計: 6h2m</b></p>
          
          
          </td>
          <td>
          
          <p>09:27 ~ 17:02</p>
      
          <p>休憩 -0h33m</p>
      
          <p><b>合計 +6h2m</b></p>
          
          <br />
          
          </td>
        </tr>
        <tr>
          <th scope="row">2025-07-09</th>
          <td>
          
          <p>08:20～18:22</p>
          <ul>

            <li>[PM9996|自社 製品戦略検討・調査_pm] 管理業務 <b>00:07</b></li>


            <li>[PM9996|自社 製品戦略検討・調査_pm] iOS 18.4のManagedApp新機能調査 <b>06:22</b></li>


            <li>[OM8016] 個人目標面談 <b>00:24</b></li>


            <li>[PM9996|自社 製品戦略検討・調査_pm] 夕会 <b>00:16</b></li>

          </ul>
          <p><b>合計: 7h9m</b></p>
          
          
          </td>
          <td>
          
          <p>08:20 ~ 18:22</p>
      
          <p>休憩 -1h53m</p>
      
          <p><b>合計 +7h9m</b></p>
          
          <br />
          
          </td>
        </tr>
        <tr>
          <th scope="row">2025-07-08</th>
          <td>
          
          <p>06:08～16:13</p>
          <ul>

            <li>[PM9996|自社 製品戦略検討・調査_pm] 管理業務 <b>00:03</b></li>


            <li>[PM9996|自社 製品戦略検討・調査_pm] iOS 18.4のManagedApp新機能調査 <b>08:31</b></li>


            <li>[OM8014] 製品開発部定例会議 <b>00:20</b></li>


            <li>[PM9996|自社 製品戦略検討・調査_pm] 夕会 <b>00:11</b></li>

          </ul>
          <p><b>合計: 9h5m</b></p>
          
          
          </td>
          <td>
          
          <p>06:08 ~ 16:13</p>
      
          <p><b>合計 +9h5m</b></p>
          
          <br />
          
          </td>
        </tr>
        <tr>
          <th scope="row">2025-07-07</th>
          <td>
          
          <p>09:47～17:43</p>
          <ul>

            <li>[PM9996|自社 製品戦略検討・調査_pm] 管理業務 <b>00:07</b></li>


            <li>[PM9996|自社 製品戦略検討・調査_pm] iOS 18.4のManagedApp新機能調査 <b>06:28</b></li>


            <li>[CO9999] 週次朝礼 <b>00:08</b></li>


            <li>[PM9996|自社 製品戦略検討・調査_pm] 夕会 <b>00:13</b></li>

          </ul>
          <p><b>合計: 6h56m</b></p>
          
          
          </td>
          <td>
          
          <p>09:47 ~ 17:43</p>
      
          <p><b>合計 +6h56m</b></p>
          
          <br />
          
          </td>
        </tr>
        <tr>
          <th scope="row">2025-07-04</th>
          <td>
          
          <p>10:12～18:34</p>
          <ul>

            <li>[PM9996|自社 製品戦略検討・調査_pm] 管理業務 <b>00:06</b></li>


            <li>[PM9996|自社 製品戦略検討・調査_pm] iOS 18.4のManagedApp新機能調査 <b>05:52</b></li>


            <li>[PM9996|自社 製品戦略検討・調査_pm] VPPアプリライセンスについて <b>00:17</b></li>


            <li>[OM8016] 来期の個人目標の準備 <b>00:22</b></li>


            <li>[PM9996|自社 製品戦略検討・調査_pm] 伊達さんのエラーをデバッグ <b>00:38</b></li>


            <li>[PM9996|自社 製品戦略検討・調査_pm] 夕会 <b>00:07</b></li>

          </ul>
          <p><b>合計: 7h22m</b></p>
          
          
          </td>
          <td>
          
          <p>10:12 ~ 18:34</p>
      
          <p><b>合計 +7h22m</b></p>
          
          <br />
          
          </td>
        </tr>
        <tr>
          <th scope="row">2025-07-03</th>
          <td>
          
          <p>09:29～19:09</p>
          <ul>

            <li>[PM9996|自社 製品戦略検討・調査_pm] 管理業務 <b>00:10</b></li>


            <li>[MT8151|自社 保守:技術サポートおよびインシデント対応_技術サポート_revision] DESK-23253 <b>07:09</b></li>


            <li>[PM9996|自社 製品戦略検討・調査_pm] iOS 18.4のManagedApp新機能調査 <b>01:21</b></li>

          </ul>
          <p><b>合計: 8h40m</b></p>
          
          
          </td>
          <td>
          
          <p>09:29 ~ 19:09</p>
      
          <p><b>合計 +8h40m</b></p>
          
          <br />
          
          </td>
        </tr>
        <tr>
          <th scope="row">2025-07-02</th>
          <td>
          
          <p>07:16～16:22</p>
          <ul>

            <li>[PM9996|自社 製品戦略検討・調査_pm] 管理業務 <b>00:15</b></li>


            <li>[PM9996|自社 製品戦略検討・調査_pm] iOS 18.4のManagedApp新機能調査 <b>05:07</b></li>


            <li>[OM8016] 個人目標評価準備 <b>02:32</b></li>


            <li>[PM9996|自社 製品戦略検討・調査_pm] 夕会 <b>00:12</b></li>

          </ul>
          <p><b>合計: 8h6m</b></p>
          
          
          </td>
          <td>
          
          <p>07:16 ~ 16:52</p>
      
          <p><b>合計 +8h6m</b></p>
          
          <br />
          
          </td>
        </tr>
        <tr>
          <th scope="row">2025-07-01</th>
          <td>
          
          <p>06:02～17:02</p>
          <ul>

            <li>[PM9996|自社 製品戦略検討・調査_pm] 管理業務 <b>00:06</b></li>


            <li>[PM9996|自社 製品戦略検討・調査_pm] iOS 18.4のManagedApp新機能調査 <b>08:46</b></li>


            <li>[OM8014] CLOMO事業本部キックオフ <b>00:38</b></li>


            <li>[OM8014] 製品開発部定例会議 <b>00:21</b></li>


            <li>[PM9996|自社 製品戦略検討・調査_pm] 夕会 <b>00:09</b></li>

          </ul>
          <p><b>合計: 10h0m</b></p>
          
          
          </td>
          <td>
          
          <p>06:02 ~ 17:12</p>
      
          <p><b>合計 +10h0m</b></p>
          
          <br />
          
          </td>
        </tr>
      </tbody>
    </table>

    <table class="table">
      <thead>
        <tr>
          <th scope="col">JIRA課題</th>
          <th scope="col">elapsed</th>
        </tr>
        <tr>
          <th scope="row"><a href="https://i3-systems.atlassian.net/browse/CLOMO-24493">CLOMO-24493</a></th>
          <td>45h50m</td>
        </tr>
            <tr>
          <th scope="row"><a href="https://i3-systems.atlassian.net/browse/CLOMO-24494">CLOMO-24494</a></th>
          <td>30h52m</td>
        </tr>
            <tr>
          <th scope="row"><a href="https://i3-systems.atlassian.net/browse/DESK-23253">DESK-23253</a></th>
          <td>7h9m</td>
        </tr>
            <tr>
          <th scope="row"><a href="https://i3-systems.atlassian.net/browse/CLOMO-24434">CLOMO-24434</a></th>
          <td>3h30m</td>
        </tr>
            <tr>
          <th scope="row"><a href="https://i3-systems.atlassian.net/browse/CLOMO-24519">CLOMO-24519</a></th>
          <td>0h22m</td>
        </tr>
        

      </thead>
      <tbody>
      </tbody>
    </table>






        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
      </body>
    </html>

    """
