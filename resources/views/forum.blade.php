@extends('layouts.app')

@section('content')
        @foreach($discussions as $d)
           <div class="panel panel-default">
               <div class="panel-heading">
                   <img src="{{ $d->user->avatar }}" alt="" width="50px" height="50px" style="border-radius:50%;">&nbsp;&nbsp;&nbsp;
                   @if($d->hasBestAnswer())
                       <span class="btn pull-right btn-success btn-xs">CLOSED</span>&nbsp;
                   @else 
                       <span class="btn pull-right btn-danger btn-xs">OPEN</span>&nbsp;
                   @endif
                   <span>{{ $d->user->name }},<b>{{ $d->created_at->diffForHumans() }}</b></span>
                  
               </div>
               <div class="panel-body">
                    <a href="{{ route('discussion', ['slug' => $d->slug ]) }}" class="btn btn-warning pull-right">View</a>&nbsp;
                   <h3 class="text-center">
                       {{ $d->title }}
                   </h3>
                   <p class="text-center">
                       {{ str_limit($d->content,50) }}
                   </p>
               </div>
               <div class="panel-footer">
                   <p>
                       {{ $d->replies->count() }} Replies
                       <a href="{{ route('channel', ['slug' => $d->channel->slug ])}}" class="pull-right btn btn-info btn-xs">{{ $d->channel->title }}</a>
                   </p>
                  
               </div>
           </div>
        @endforeach
        <div class="text-center">
            {{ $discussions->links() }}
        </div>
@endsection
